FIRST EXAMPLE:

#NSS Example of a basic text GUI displaying "Hello world!"
function_add }

{ add_display , message "Hello world! NSS is alive!" #Adds message of NSS on screen.

} END

SECOND EXAMPLE:

# NSS Example of a basic text GUI displaying "Hello world!"

function add_display() {
  add_display(message, "Hello world! NSS is alive!"); 
  # Adds message of NSS on the screen.
}

END
