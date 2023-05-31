# NSS System Calls

# System Call: Write File
function sys_write_file {
    file_path = get_input("Enter the file path: ")
    content = get_input("Enter the content: ")
    
    file_handle = open_file(file_path, "w")  # Open the file for writing

    if file_handle != null {
        write_file(file_handle, content)  # Write the content to the file
        close_file(file_handle)  # Close the file
        display_message("File written successfully: " + file_path)
        return_to_menu true
    } otherwise {
        display_message("Failed to open file: " + file_path)
        return_to_menu false
    }
}

# Entry point
function main {
    # Usage example: Write to file using sys_write_file
    success = sys_write_file()
    
    if success {
        display_message("File written successfully!")
    } else {
        display_message("Failed to write file!")
    }
}
