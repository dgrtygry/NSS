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

With this simplified guide and cheat sheet, beginners can start exploring the NSS programming language, write their own code, and compile it using the provided Python script.
