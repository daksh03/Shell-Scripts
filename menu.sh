
#!/bin/bash

while true; do
    echo "Menu:"
    echo "1. Create a file"
    echo "2. View a file"
    echo "3. Exit"
    read -p "Enter your choice: " n

    case $n in
        1)
            read -p "Enter file name: " file
            touch "${file}.txt"
            echo "File ${file}.txt created."
            ;;
        2)
            read -p "Enter file name: " file
            if [[ -f "${file}.txt" ]]; then
                cat "${file}.txt"
            else
                echo "File ${file}.txt does not exist."
            fi
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please enter 1, 2, or 3."
            ;;
    esac
done

