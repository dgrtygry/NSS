function_add {bios} #Adds the BIOS function to NSS

implement {bios} num 02 mov, sync 2 #Moves text across a screen in BIOS

display_message {bios} num 07 mov, sync 3 && mov, sync 04 && implement {bios} add_function {kernel} kernel=003 display_bios_message="Simple BIOS in NSS".
