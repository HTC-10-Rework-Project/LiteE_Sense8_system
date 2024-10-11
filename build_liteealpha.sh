# /bin/bash
# Version 2.0-ALPHA
LITEE_PATH="/home/j6idot/HTC/LiteE10"
UPSTREAM_VERSION=3.16.709.15

clear

# Unmount the system partition first
sudo umount -l *
# end

# Create a backup of the system image
if [ ! -f "system_backup.img" ]; then
	read -p "Would you like to create a backup of the system image? (system.img) (y/n) " RESP
	if [ "$RESP" = "y" ]; then
	echo - Creating a backup as system_backup.img
	cp system.img system_backup.img
	fi
else 
	sleep 3
fi
# end

# Mount the system partition
echo -- Mounting the system partition
mkdir system &> /dev/zero
e2fsck -yf system.img > $LITEE_PATH/e2fsck.log
resize2fs system.img 4000M > $LITEE_PATH/resize2fs.log
sudo mount -o loop system.img system || { echo 'mount failed!' ; exit 1; }
df -h system/
echo "Before:" > $LITEE_PATH/system_size.log
df -h system/ >> $LITEE_PATH/system_size.log
sleep 1
# end

# Upstream to specified version
echo --- Upstream to $UPSTREAM_VERSION
if [ ! -d "$LITEE_PATH/LiteE/upstream/$UPSTREAM_VERSION" ]; then
  echo "The specified upstream folder does not exist. Are you sure you inserted the right version?"
  exit
fi
read -p "Would you like to upstream the ROM to $UPSTREAM_VERSION? (y/n) " RESP
if [ "$RESP" = "y" ]; then
		sudo cp -r $LITEE_PATH/LiteE/upstream/$UPSTREAM_VERSION/system/* $LITEE_PATH/system/
		sudo cp $LITEE_PATH/LiteE/upstream/$UPSTREAM_VERSION/system/build.prop $LITEE_PATH/system/
else 
	sleep 1
fi

# end

# Debloat /system/app
echo --- Debloating /system/app
cd system/app
sudo rm -rf AndroidPay \
	Drive \
	Duo \
	EditorsDocs \
	facebook-stub \
	FaceLock \
	Gmail2 \
	Hangouts \
	HTCSpeakCyberon \
	instagram-stub \
	Maps \
	messenger-stub \
	Music2 \
	News_Republic \
	PacProcessor \
	PartnerBookmarksProvider \
	PlayAutoInstallConfig-stub \
	TouchPal_* \
	Videos \
	YouTube \
	MyHTC
# end

# Debloat /system/priv-app
#	HtcBIDHandler \
#	UIBC \
echo --- Debloating /system/priv-app
cd .. && cd priv-app
sudo rm -rf AMapNetworkLocation \
	AndroidHtcSync \
	AppCloud \
	Facebook \
	Frisbee \
	GooglePartnerSetup \
	GooglePlusPlugin \
	GSD \
	HtcContactsDNATransfer \
	iCloudTransfer \
	Mail \
	NeroHTCInstaller \
	PNSClient \
	SA_AdapterFWUpdateTool \
	SmithLite \
	TouchPal* \
	Twitter \
	UDove \
	Updater \
	Velvet \
	DemoFLOPackageInstaller \
	FlexNet \
	installer \
	HtcLockScreen \
	HtcWeatherClockWidget \
	HtcIceView \
	HtcBIDHandler \
	HtcAccessoryService \
	UIBC \
	ContextualWidget \
	CtsShimPrivPrebuilt \
	CustomizationSettingsProvider \
	CustomizationSetup \
	Default_IME_Provider \
	DemoFLOPackageInstaller \
	DrawingBoard \
	HTCAdvantage
cd ..
# end

# copy Gboard to /system/app
echo --- Copying Gboard to /system/app
sudo cp -r $LITEE_PATH/LiteE/system/app/LatinIMEGooglePrebuilt $LITEE_PATH/system/app
sudo chmod 0755 $LITEE_PATH/system/app/LatinIMEGooglePrebuilt
sudo chmod 0644 $LITEE_PATH/system/app/LatinIMEGooglePrebuilt/LatinIMEGooglePrebuilt.apk
sudo chown $ROOT:$ROOT $LITEE_PATH/system/app/LatinIMEGooglePrebuilt/LatinIMEGooglePrebuilt.apk
# end

# copy ScreenCapture to /system/app
echo --- Copying ScreenCapture to /system/app
sudo cp -r $LITEE_PATH/LiteE/system/app/ScreenCapture $LITEE_PATH/system/app
sudo chmod 0755 $LITEE_PATH/system/app/ScreenCapture
sudo chmod 0644 $LITEE_PATH/system/app/ScreenCapture/ScreenCapture.apk
sudo chown $ROOT:$ROOT $LITEE_PATH/system/app/ScreenCapture/ScreenCapture.apk
# end

# install lawnchair
echo --- Install Lawnchair
sudo cp $LITEE_PATH/LiteE/system/priv-app/Prism/Prism.apk $LITEE_PATH/system/priv-app/Prism
sudo mkdir $LITEE_PATH/system/priv-app/Lawnchair
sudo cp -r $LITEE_PATH/LiteE/system/priv-app/Lawnchair $LITEE_PATH/system/priv-app/
sudo chmod -R 0755 $LITEE_PATH/system/priv-app/Lawnchair/
sudo chown -R $ROOT:$ROOT $LITEE_PATH/system/priv-app/Lawnchair/
# end

# copy AOSP sounds
echo --- Copy AOSP Alarm / Ringtones / Notification sounds
sudo cp -r $LITEE_PATH/LiteE/system/media/audio/* $LITEE_PATH/system/media/audio/
# end

# remove logd
echo --- Removing logd
sudo rm -rf $LITEE_PATH/system/etc/init/logd.rc
# end

# remove loggers
echo --- Removing a few loggers
cd $LITEE_PATH/system/vendor/bin
sudo rm -rf qmi-framework-tests \
	diag_callback_sample \
	diag_dci_sample \
	diag_klog \
	diag_mdlog \
	diag_socket_log \
	diag_uart_log \
	init.usbdiag.sh \
	ipacm-diag \
	mmi_debug \
	mmi_diag \
	mm-qjpeg-dec-test \
	mm-qjpeg-enc-test \
	mm-qomx-idec-test \
	mm-vidc-omx-test \
	mm-qomx-ienc-test \
	PktRspTest \
	qjpeg-dma-test \
	qmi_simple_ril_test \
	ssr_diag \
	test_diag

sudo rm -rf $LITEE_PATH/system/vendor/bin/init.minidump.sh
sudo rm -rf $LITEE_PATH/system/bin/hrdump_v2
sudo rm -rf $LITEE_PATH/system/bin/debuggerd
sudo rm -rf $LITEE_PATH/system/bin/htc_ebdlogd
sudo rm -rf $LITEE_PATH/system/bin/htcnetdumplog
sudo rm -rf $LITEE_PATH/system/bin/net_log
sudo rm -rf $LITEE_PATH/system/bin/qsee_logger
sudo rm -rf $LITEE_PATH/system/bin/opendiag
sudo rm -rf $LITEE_PATH/system/bin/mlogger
sudo rm -rf $LITEE_PATH/system/bin/fmfactorytest
sudo rm -rf $LITEE_PATH/system/bin/fmfactorytestserver
sudo cp -r $LITEE_PATH/LiteE/system/vendor/etc/init/hw* $LITEE_PATH/system/vendor/etc/init/hw
# end

# change the splash screen
echo --- Edit the 2nd splash screen
sudo cp $LITEE_PATH/LiteE/system/customize/resource/splash_screen.png $LITEE_PATH/system/customize/resource/
# end

# disable signature verification
#echo --- Disable signature verification
#sudo cp $LITEE_PATH/LiteE/system/framework/core-oj.jar $LITEE_PATH/system/framework
#sudo rm -rf $LITEE_PATH/system/framework/arm64/boot-core-oj*
#sudo rm -rf $LITEE_PATH/system/framework/arm/boot-core-oj*
# end

# modify the build.prop
echo --- Modifying the build.prop
cd $LITEE_PATH/system
sudo cp $LITEE_PATH/LiteE/system/build.prop .

## Build Counter
touch $LITEE_PATH/LiteE/buildcount
COUNTER=$(cat $LITEE_PATH/LiteE/buildcount)
next_n=$[$COUNTER+1]
echo $next_n > $LITEE_PATH/LiteE/buildcount
## end
# end

# modify the default.xml file in customize/CID
echo --- Make some changes in customize/CID/default.xml
sudo cp $LITEE_PATH/LiteE/system/customize/CID/default.xml $LITEE_PATH/system/customize/CID/
# end

# modify the bootanimation
echo --- Change the bootanimation
sudo cp $LITEE_PATH/LiteE/system/customize/resource/bootanimation.zip $LITEE_PATH/system/customize/resource/hTC_bootup.zip
# end

# change the main dialer
echo --- Change the dialer to the AOSP one
sudo rm -rf $LITEE_PATH/system/priv-app/InCallUI
sudo mkdir $LITEE_PATH/system/priv-app/Dialer
sudo cp $LITEE_PATH/LiteE/system/priv-app/Dialer/Dialer.apk $LITEE_PATH/system/priv-app/Dialer
sudo chmod 0644 $LITEE_PATH/system/priv-app/Dialer/Dialer.apk
sudo cp $LITEE_PATH/LiteE/system/etc/permissions/com.google.android.dialer.support.xml $LITEE_PATH/system/etc/permissions/
sudo chmod 0644 $LITEE_PATH/system/etc/permissions/com.google.android.dialer.support.xml
sudo cp $LITEE_PATH/LiteE/system/framework/com.google.android.dialer.support.jar $LITEE_PATH/system/framework/
sudo chmod 0644 $LITEE_PATH/system/framework/com.google.android.dialer.support.jar
# end

thedate=$(date +%Y-%m-%d)

sudo sed -i "s/INSERTDATEHERE/$thedate/g" build.prop
sudo sed -i "s/BUILDCOUNT/BUILD-$COUNTER/g" build.prop
# end

# debloat some other system files
echo --- Final touches
sudo rm -rf $LITEE_PATH/system/etc/HTCSpeakData
sudo rm -rf $LITEE_PATH/system/etc/.demoflo
sudo rm -rf $LITEE_PATH/system/customize/resource/allapplication_*
sudo rm -rf $LITEE_PATH/system/customize/resource/contextualwidget_*
sudo rm -rf $LITEE_PATH/system/customize/resource/quicklaunch_*
# end

# unmount the system and resize the image
echo ---- Resizing the image
cd $LITEE_PATH
echo >> $LITEE_PATH/system_size.log
echo "After:" >> $LITEE_PATH/system_size.log
df -h system/ >> $LITEE_PATH/system_size.log
sudo umount system
echo >> $LITEE_PATH/e2fsck.log
echo >> $LITEE_PATH/resize2fs.log
e2fsck -yf system.img >> $LITEE_PATH/e2fsck.log
resize2fs system.img 2700M >> $LITEE_PATH/resize2fs.log
echo 
echo 
echo -----
echo Done!
echo Remember:
echo chcon -R u:object_r:system_file:s0 /system/app/LatinIMEGooglePrebuilt/
echo chcon -R u:object_r:system_file:s0 /system/app/ScreenCapture/
echo chcon u:object_r:system_file:s0 /system/etc/permissions/com.google.android.dialer.support.xml
echo chcon u:object_r:system_file:s0 /system/framework/com.google.android.dialer.support.jar
echo chcon -R u:object_r:system_file:s0 /system/media/audio/notifications
echo chcon -R u:object_r:system_file:s0 /system/media/audio/ringtones
echo chcon -R u:object_r:system_file:s0 /system/media/audio/alarms
echo chcon -R u:object_r:system_file:s0 /system/media/audio/ui
echo chcon -R u:object_r:system_file:s0 /system/priv-app/Lawnchair/
echo chcon -R u:object_r:system_file:s0 /system/priv-app/Dialer/
echo chcon u:object_r:system_file:s0 /system/vendor/etc/permissions/android.hardware.vulkan.compute-0.xml
