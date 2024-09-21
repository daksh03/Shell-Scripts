
read -p "Enter git directory name (leave blank for current directory): " dir

# If directory is specified and exists
if [[ -n $dir && -d $dir ]]; then
    cd "$dir"
    echo "Switched to directory: $dir"
else
    if [[ -z $dir ]]; then
        # If no directory is specified, assume current directory
        echo "Using current directory"
    else
        echo "No such directory exists: $dir"
        exit 1
    fi
fi

# Check git status
if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    git status
    git add .

    # Ensure commit message is not empty
    read -p "Enter commit message: " msg
    if [[ -z "$msg" ]]; then
        echo "Commit message cannot be empty."
        exit 1
    fi

    git commit -m "$msg"
    git push
else
    echo "This is not a git repository."
fi


