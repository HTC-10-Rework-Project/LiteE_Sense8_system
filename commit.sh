# /bin/bash

echo Commit name:
read COMMIT1

read -p "Would you like to add a commit message? (y/n)" RESP
if [ "$RESP" = "y" ]; then
	echo Commit message: 
	read COMMIT2
	git commit -m "LiteE_Sense8_system: $COMMIT1" -m "$COMMIT2"
	git push LiteE v1
else
	git commit -m "LiteE_Sense8_system: $COMMIT1"
	git push LiteE v1
fi
