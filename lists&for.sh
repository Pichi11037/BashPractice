LIST=(ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN)

for n in ${LIST[@]}
do
    echo $n | wc -c
    echo Folder-$n
done

echo How many folders?
read NO_FOLDERS

for ((i=1; i<=NO_FOLDERS; i++));
do
    echo $i
done



for i in {0..10}
do
    echo $i
done