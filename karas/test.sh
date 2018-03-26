
ls * >../karas.txt

FILE=../karas.json

echo " { \"karas\": [ " >$FILE

while read kara 
do
echo $kara
YEAR=`cat "$kara" | grep year= | awk -F= {'print $2'}`
SINGER=`cat "$kara" | grep singer= | awk -F= {'print $2'}`
SONGWRITER=`cat "$kara" | grep songwriter= | awk -F= {'print $2'}`
CREATOR=`cat "$kara" | grep creator= | awk -F= {'print $2'}`
AUTHOR=`cat "$kara" | grep author= | awk -F= {'print $2'}`
SERIES=`cat "$kara" | grep series= | awk -F= {'print $2'}`
LANG=`cat "$kara" | grep lang= | awk -F= {'print $2'}`
DURATION=`cat "$kara" | grep videoduration= | awk -F= {'print $2'}`
TITLE=`cat "$kara" | grep title= | awk -F= {'print $2'}`
TYPE=`cat "$kara" | grep type= | awk -F= {'print $2'}`
ORDER=`cat "$kara" | grep order= | awk -F= {'print $2'}`
TAGS=`cat "$kara" | grep tags= | awk -F= {'print $2'}`
DATEADDED=`cat "$kara" | grep dateadded | awk -F= {'print $2'}`
DATEMODIF=`cat "$kara" | grep datemodif | awk -F= {'print $2'}`
KID=`cat "$kara" | grep KID | awk -F= {'print $2'}`
AUDIOGAIN=`cat "$kara" | grep videogain | awk -F= {'print $2'}`
VIDEODURATION=`cat "$kara" | grep videoduration | awk -F= {'print $2'}`
VIDEOSIZE=`cat "$kara" | grep videosize | awk -F= {'print $2'}`
VIDEOFILE=`cat "$kara" | grep videofile | awk -F= {'print $2'}`
SUBFILE=`cat "$kara" | grep subfile | awk -F= {'print $2'}`

echo " {\"year\": \"$YEAR\"," >>$FILE
echo "  \"subfile\": \"$SUBFILE\"," >>$FILE
echo "  \"videofile\": \"$VIDEOFILE\"," >>$FILE
echo "  \"singer\": \"$SINGER\"," >>$FILE
echo "  \"songwriter\": \"$SONGWRITER\"," >>$FILE
echo "  \"creator\": \"$CREATOR\"," >>$FILE
echo "  \"author\": \"$AUTHOR\"," >>$FILE
echo "  \"series\": \"$SERIES\"," >>$FILE
echo "  \"lang\": \"$LANG\"," >>$FILE
echo "  \"duration\": $DURATION," >>$FILE
echo "  \"title\": \"$TITLE\"," >>$FILE
echo "  \"type\": \"$TYPE\"," >>$FILE
echo "  \"order\": \"$ORDER\"," >>$FILE
echo "  \"tags\": \"$TAGS\"," >>$FILE
echo "  \"dateadded\": \"$DATEADDED\"," >>$FILE
echo "  \"datemodif\": \"$DATEMODIF\"," >>$FILE
echo "  \"kid\": \"$KID\"," >>$FILE
echo "  \"audiogain\": \"$AUDIOGAIN\"," >>$FILE
echo "  \"duration\": \"$VIDEODURATION\"" >>$FILE
echo " }," >>$FILE
done <../karas.txt
echo "]}" >>$FILE
#sed 'x; ${s/,//;p;x}; 1d' -i 