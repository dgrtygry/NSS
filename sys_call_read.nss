# NSS System Calls

# System Call: Read File
function sys_read_file {
    file_path = get_input("Enter the file path: ")
    
    file_handle = open_file(file_path, "r")  # Open the file for reading

    if file_handle != null {
        file_contents = read_file(file_handle)  # Read the contents of the file
        close_file(file_handle)  # Close the file
        return_to_menu file_contents
    } otherwise {
        display_message("Failed to open file: " + file_path)
        return_to_menu null
    }
}

# Entry point
function main {
    # Usage example: Read file using sys_read_file
    file_contents = sys_read_file()
    
    if file_contents != null {
        display_message("File contents:")
        display_message(file_contents)
    }
}
