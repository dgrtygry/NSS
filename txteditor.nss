# Text Editor
function text_editor {
    file_name = get_input("Enter the file name: ")
    
    if file_exists(file_name) {
        display_message("Opening file: " + file_name)
        file_content = read_file(file_name)
    } otherwise {
        display_message("Creating new file: " + file_name)
        file_content = ""
    }
    
    display_message("Text Editor")
    display_message("Commands:")
    display_message("- Type: Start typing your text")
    display_message("- Save: Save the changes to the file")
    display_message("- Exit: Exit the text editor without saving")
    
    while true {
        command = get_input("Enter a command: ")
        
        if command == "Type" {
            text = get_input("Enter your text: ")
            file_content = file_content + text
        } otherwise command == "Save" {
            write_file(file_name, file_content)
            display_message("File saved: " + file_name)
        } otherwise command == "Exit" {
            display_message("Exiting text editor")
            return_to_menu
        } otherwise {
            display_message("Invalid command!")
        }
    }
}
