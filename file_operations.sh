# Get the source file path from the user
echo "Please enter the path of the source file: "
read source_path

# Check if the source file exists
if [ ! -f "$source_path" ]; then
  echo "Error: $source_path does not exist!"
  exit 1
fi

# Get the destination directory path from the user
echo "Please enter the path of the destination directory: "
read destination_path

# Check if the destination directory exists
if [ ! -d "$destination_path" ]; then
  echo "Error: $destination_path does not exist!"
  exit 1
fi

# Get the user's choice
echo "Please enter your choice: copy (c), move (m), or delete (d)"
read choice

# Perform the operation based on the user's choice
case $choice in
  c|C) 
       cp "$source_path" "$destination_path"
       echo "File copied successfully!"
       ;;
  m|M) 
       mv "$source_path" "$destination_path"
       echo "File moved successfully!"
       ;;
  d|D) 
       rm "$source_path"
       echo "File deleted successfully!"
       ;;
  *) 
     echo "Error: invalid choice!"
     exit 1
     ;;
esac
exit 0
