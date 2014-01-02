#batch file remove spaces and replace with an underscore 
# 
find . -name '* *' | while read file;
do
target=`echo "$file" | sed 's/ /_/g'`;
echo "Renaming '$file' to '$target'";
mv "$file" "$target";
done;

