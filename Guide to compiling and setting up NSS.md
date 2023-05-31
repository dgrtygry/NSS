NSS Cheat Sheet
Data Types
num: Represents numerical values (e.g., 42, -3.14)
text: Represents textual data (e.g., "Hello, NSS!")
Variables
Declaration: var_name = value
Examples:
age = 25
name = "John"
Functions
Declaration: function function_name(parameters) {
// function body
}
Example:
NSS
Copy code
function display_message() {
    display("Hello, NSS!");
}
Output
display(expression): Outputs the result of an expression or a string.
Example:
NSS
Copy code
display("Welcome to NSS programming!");
Input
input(prompt): Accepts user input with an optional prompt.
Example:
NSS
Copy code
name = input("Enter your name: ");
Compilation using compile.py script
Save your NSS code in a file with the extension .nss, for example, my_program.nss.

Create a Python script, for example, compile.py.

Use the following code in your compile.py script:

python
Copy code
import subprocess

def compile_nss(source_file):
    output_file = source_file.replace('.nss', '.exe')  # Replace with desired output extension
    subprocess.run(['python', 'nss_compiler.py', source_file, output_file])

def main():
    source_file = input("Enter the path to your NSS source code file: ")
    compile_nss(source_file)

if __name__ == "__main__":
    main()
Open a terminal or command prompt, navigate to the directory containing the compile.py script, and run the script using the command:

python
Copy code
python compile.py
When prompted, enter the path to your NSS source code file, for example, my_program.nss.

The script will compile your NSS code using the nss_compiler.py script and generate an executable file with the same name as your source code file but with a different extension (e.g., my_program.exe).

NSS Beginner's Guide
Install Python: NSS code is compiled using a Python script, so ensure you have Python installed on your system.

Create a new NSS source code file: Open a text editor and create a new file with the extension .nss, such as my_program.nss.

Write your NSS code: Use the NSS syntax to write your program, including variables, functions, input/output, and other statements. Refer to the NSS Cheat Sheet for guidance on basic commands and syntax.

Save the NSS source code file: Save your code in the NSS source code file you created.

Set up the compilation script: Create a Python script, compile.py, and copy the provided compilation script into it.

Compile your NSS code: Open a terminal or command prompt, navigate to the directory containing the compile.py script, and run the script using the command python compile.py.

Enter the path to your NSS source code file: When prompted, enter the path to your NSS source code file (e.g., my_program.nss).

Executable generation: The compilation script will compile your NSS code using the nss_compiler.py script and generate an executable file with the same name as your source code file but with a different extension (e.g., my_program.exe).

Run the executable: Execute the generated executable file to see the output of your NSS program.

Variable Declaration and Assignment
var_name = value: Declares a variable and assigns a value to it.
Output
display(expression): Displays the result of an expression or a string.
Input
variable_name = input(prompt): Accepts user input with an optional prompt.
Functions
function function_name(parameters) { ... }: Declares a custom function with optional parameters.
Control Structures
if (condition) { ... }: Executes a block of code if the condition is true.
if (condition) { ... } else { ... }: Executes a block of code if the condition is true; otherwise, executes a different block of code.
while (condition) { ... }: Executes a block of code repeatedly as long as the condition is true.
for (initialization; condition; increment) { ... }: Executes a block of code repeatedly based on the specified initialization, condition, and increment.
Comments
// Single-line comment: Adds a single-line comment.
/* Multi-line comment */: Adds a multi-line comment.
Arithmetic Operators
+: Addition
-: Subtraction
*: Multiplication
/: Division
%: Modulus (remainder)
Comparison Operators
==: Equal to
!=: Not equal to
<: Less than
>: Greater than
<=: Less than or equal to
>=: Greater than or equal to
Logical Operators
&&: Logical AND
||: Logical OR
!: Logical NOT
Examples
NSS
Copy code
// Variable declaration and assignment
name = "John"
age = 25

// Output
display("Hello, NSS!")
display(42)

// Input
name = input("Enter your name: ")

// Function declaration
function greet() {
    display("Hello, NSS!")
}

// Control structures
if (age > 18) {
    display("You are an adult.")
} else {
    display("You are not yet an adult.")
}

while (count < 10) {
    display(count)
    count = count + 1
}

for (i = 1; i <= 5; i = i + 1) {
    display(i)
}
This list covers some of the fundamental commands in NSS. As you progress and explore more advanced concepts, you can incorporate additional commands and features specific to your needs.

Step 1: Install Python
Ensure that Python is installed on your system. You can download and install Python from the official Python website (https://www.python.org) by following the instructions specific to your operating system.

Step 2: Create a New NSS Source Code File
Open a text editor and create a new file. Save the file with the extension .nss, such as my_program.nss. This file will contain your NSS source code.

Step 3: Write Your NSS Code
Inside the NSS source code file, you can start writing your NSS code. Here are some basic commands and syntax to get you started:

Variables
Declare and assign values to variables using the following syntax:

makefile
Copy code
variable_name = value
For example:

NSS
Copy code
name = "John"
age = 25
Output
Display output to the console using the display command:

scss
Copy code
display(expression)
For example:

NSS
Copy code
display("Hello, NSS!")
display(42)
Input
Get user input using the input command:

css
Copy code
variable_name = input(prompt)
For example:

NSS
Copy code
name = input("Enter your name: ")
Functions
Define custom functions using the following syntax:

javascript
Copy code
function function_name(parameters) {
    // function body
}
For example:

NSS
Copy code
function greet() {
    display("Hello, NSS!");
}
Step 4: Save the NSS Source Code File
Save your NSS source code file after writing your code. Make sure to save it with the .nss extension, such as my_program.nss.

Step 5: Set Up the Compilation Script
Create a new Python script, let's call it compile.py. Copy the provided compilation script into this file. This script will be used to compile your NSS code.

Step 6: Compile Your NSS Code
Open a terminal or command prompt and navigate to the directory where your compile.py script is located. Run the script using the following command:

python
Copy code
python compile.py
The script will prompt you to enter the path to your NSS source code file. Provide the path, for example: my_program.nss. Press Enter to start the compilation process.

Step 7: Execute the Generated Executable
After the compilation is successful, an executable file will be generated. In the case of the provided script, it will have the same name as your NSS source code file but with a different extension (e.g., .exe).

Execute the generated executable file, for example, by double-clicking on it or running it from the command line, to see the output of your NSS program.

These steps provide a basic overview of creating your first NSS code. You can expand your NSS programs by incorporating more advanced concepts and syntax as you gain familiarity with the language.
