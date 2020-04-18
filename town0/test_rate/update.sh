for I in *.csv
do
if ! test -e $I.zip; then
  echo "Zipping $I"
  zip $I.zip $I
fi
done

for I in *.zip 
do
BASE=`basename $I .zip`
if ! test -e $BASE; then
    echo "Unzipping $I to $BASE"
    unzip $I
fi 
done

