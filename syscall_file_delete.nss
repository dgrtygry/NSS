# System Call: Delete File
function sys_delete_file {
    file_name = get_input("Enter the file name: ")
    
    if delete_file(file_name) {
        display_message("File deleted: " + file_name)
        return_to_menu true
    } otherwise {
        display_message("Failed to delete file: " + file_name)
        return_to_menu false
    }
}
