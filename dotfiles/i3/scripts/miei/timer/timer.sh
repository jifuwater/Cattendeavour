#!/usr/bin/bash
cd ~/.config/i3/scripts/miei/timer
var=0
b=0
if [ $(cat local) == 0 ];then
if [ $BLOCK_BUTTON == 4 ];then
	var=$(cat value)	
	var=$(expr $var + 60)	
	rm value
	echo $var >> value
	echo " $(expr $var / 60) m"
	echo ""
	echo "#f9e2af"
fi

if [ $BLOCK_BUTTON == 5 ];then
	if [ $(cat value) -ge 60 ];then
	var=$(cat value)	
	var=$(expr $var - 60)	
	rm value
	echo $var >> value
	echo " $(expr $var / 60) m"
	echo ""
	echo "#f9e2af"
	fi
fi
if [ $BLOCK_BUTTON == 1 ];then
rm local
echo 1 >> local 
fi
fi

if [ $(cat local) == 1 ];then
if [ $BLOCK_BUTTON == 4 ] || [ $BLOCK_BUTTON == 5 ]; then                                         
rm local                                                                                           
echo 0 >> local                                                                                    
rm value
echo 0 >> value
fi 
./contdown.sh  
fi

