
#!/bin/bash

list() {
    local dir="$1"
    if [ -d "$dir" ]; then
        echo "All the files and directories in $dir"
        ls -lh "$dir"
    else
        echo "ERROR: $dir directory does not exist"
    fi
}

remove() {
    local dir="$1"
    if [ -d "$dir" ]; then
        rmdir "$dir"
        echo "Removed directory: $dir"
    else
        echo "ERROR: $dir directory does not exist"
    fi
}



    remove_f() {
        local file="$1"
        if [ -f "$file" ]; then
            rm $file
            echo "Removed file: $file"
        else
            echo "ERROR: $file does not exist"
        fi
    }

    add() {
        local dir="$1"
        if [ ! -d "$dir" ]; then
            mkdir "$dir"
            echo "Added directory: $dir"
        else
            echo "ERROR: $dir already exists"
        fi
    }



add_f() {
    local file="$1"
    if [ ! -f "$file" ]; then
        touch "$file"
        echo "Added file: $file"
    else
        echo "ERROR: $file already exists"
    fi
}

echo "Select an option:"
echo "1. Add a directory"
echo "2. Add a file"
echo "3. Remove a directory"
echo "4. Remove a file"
echo "5. List the directory"

read -p "Enter your choice: " choice
case "$choice" in
    1)
        echo "Enter the directory name:"
        read directory
        add "$directory"
        ;;
    2)
        echo "Enter the file name:"
        read file
        add_f "$file"
        ;;
    3)
        echo "Enter the directory name:"
        read directory
        remove "$directory"
        ;;
     4)
        echo "Enter the file name:"
        read file
        remove_f "$file"
        ;;

     5)
       echo "Enter the directory name:"
       read directory
       list "directory"
       ;;
     
      *)
       echo "ERROR: Invalid Choice "
       ;;
   
      esac