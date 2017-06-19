#!/bin/sh


files="
myHomepage.HTML
game_social_forum.html
README.md
update.sh
updateproduction.sh
css\main.css
info\wjr.txt
"

dirs="
css
info
"

filerm() {
	for file in $files
	do
		file="$DOWHOME\\$file"
		#echo $file
		if [ -f $file ]
		then
			echo "file found at $file"
			rm $file
		fi
	done
}

dirrm() {
for dir in $dirs
do
	dir="$DOWHOME\\$dir"
	#echo $dir
	if [ -d $dir ]
	then
		echo "dir found at $dir"
		rmdir $dir
	fi	
done
}

updateproject() {
	tar cvf - --exclude "update.sh" * | (cd $DOWHOME ; tar xf - )
	files=`(cd $DOWHOME ; find * -type f -print)`
}


DOWHOME=C:\\Users\\wayne\\Downloads\\myFirefoxHomepage-master-test
if [ -d $DOWHOME ]
then
	filerm
	dirrm
	updateproject
fi
