#!/bin/sh

DOWHOME=C:\\Users\\wayne\\Downloads\\myFirefoxHomepage-master-test
if [ -d $DOWHOME ]
then
	echo $DOWHOME
	tar cvf - * | (cd $DOWHOME ; tar xf - )
fi

