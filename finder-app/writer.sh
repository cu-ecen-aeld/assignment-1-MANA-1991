writefile=$1
writestr=$2
tmppath=""

if [ -z $writefile ] || [ -z $writestr ] 
then
    echo "missing partameters"
    exit 1
elif [ ! -d $writefile ]
then
    # echo "$writefile"
    # IFS='/'
    # read -a writepatharr <<< "$writefile"
    # # ${strarr[-1]}="/o"
    # file="${writepatharr[-1]}"
    # unset -v 'writepatharr[-1]'

    # # echo "${writepatharr[@]}"
    
    # for each in "${writepatharr[@]}"
    # do
    #     tmppath+="${each}/"
        
    # done

    # echo "$file"
    echo "$writestr"
    mkdir -p "${writefile%/*}" && touch "$writefile"
    echo "$writestr" > $writefile
    # mkdir -p "$writefile"
elif [ -d $writefile ]
then

    # touch $writefile
    echo "$writestr" >> $writefile
    echo "$writefile"
    # cat $writestr > "$writefile"
    # exit 0
else
    echo "Operation failed."
    exit 1
fi