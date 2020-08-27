METARDIR=""
DAYFOLDER="$METARDIR$(date +%y.%m.%d)/"
FILE="$(date +%H.%M.%S.json)"
METARPATH=$DAYFOLDER$FILE

echo $FILE
echo $METARPATH

if [ ! -f $DAYFOLDER ]; then
	echo "Creating $DAYFOLDER..."
	mkdir $DAYFOLDER
fi

curl https://www.aviationweather.gov/cgi-bin/json/MetarJSON.php > $METARPATH
