# NSS System Calls

# System Call: Device Detection
function sys_detect_device {
    device_name = get_input("Enter the device name: ")
    
    if detect_device(device_name) {
        display_message("Device detected: " + device_name)
        return_to_menu true
    } otherwise {
        display_message("Device not detected: " + device_name)
        return_to_menu false
    }
}

# Entry point
function main {
    # Usage example: Detect device using sys_detect_device
    success = sys_detect_device()
    
    if success {
        display_message("Device detected!")
    } else {
        display_message("Device not detected!")
    }
}
