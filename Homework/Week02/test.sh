wget google.com
if [ $? -eq 0 ]
then
	echo "good"
else 
	echo "bad"
fi
