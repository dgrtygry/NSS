# NSS File Manager

# System Call: Create File
function sys_create_file {
    file_name = get_input("Enter the file name: ")
    
    if create_file(file_name) {
        display_message("File created: " + file_name)
        return_to_menu true
    } otherwise {
        display_message("Failed to create file: " + file_name)
        return_to_menu false
    }
}

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

# System Call: Read File
function sys_read_file {
    file_name = get_input("Enter the file name: ")
    
    file_data = read_file(file_name)  # Read the file
    
    if file_data != null {
        display_message("File content:")
        display_message(file_data)
    } otherwise {
        display_message("Failed to read file: " + file_name)
    }
    
    return_to_menu
}

# System Call: Write File
function sys_write_file {
    file_name = get_input("Enter the file name: ")
    file_data = get_input("Enter the file data: ")
    
    if write_file(file_name, file_data) {
        display_message("File written: " + file_name)
        return_to_menu true
    } otherwise {
        display_message("Failed to write file: " + file_name)
        return_to_menu false
    }
}

# NSS Kernel

# Function to handle user commands
function handle_command {
    display_message("Welcome to NSS Kernel!")
    display_message("Available commands:")
    display_message("1. Create File")
    display_message("2. Delete File")
    display_message("3. Read File")
    display_message("4. Write File")
    display_message("5. Exit")

    command = get_input("Enter the command number: ")

    if command == "1" {
        sys_create_file()
    } otherwise command == "2" {
        sys_delete_file()
    } otherwise command == "3" {
        sys_read_file()
    } otherwise command == "4" {
        sys_write_file()
    } otherwise command == "5" {
        display_message("Exiting NSS Kernel. Goodbye!")
        terminate_kernel()
    } otherwise {
        display_message("Invalid command!")
    }

    handle_command()  # Recursive call to keep the program running
}

# Entry point
function main {
    handle_command()
}

# Start the NSS Kernel
main()
