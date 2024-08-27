cd drawable
for f in `ls`
do
    sed "s/\(aapt\"\)/aapt\"\n\    android:tint=\"\@color\/primaryForeground\"/g" $f > ../finish/$f
    rm $f
    cd ../finish
    i=`echo "${f%_foreground*}"`
    touch $i.xml
    sed "s/\(nul\)/$i/g" ../bool.xml > $i.xml
    cd ../drawable
done
