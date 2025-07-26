

## 📁 File Management System

## Script Description
This script provides a menu-driven interface to:
1. List files in the current directory.
2. Add up a  directory.
3. Add up a file
4. Remove a directory
5. Remove a file

Used bash script 
In which I used 
Functions for all the above cases
And used “case in “ for the execution of a specific case 
Which is present in the list 
By entering the case no.
Inside the functions I used commands 
Ls rmdir rm mkdir 
-d -f flags
And If statements for optimisation and  error handling  

## Usage Instructions
1. Open a terminal.
2. Navigate to the directory containing `my_script.sh`.
3. Run the script using `./my_script.sh`.
4. Follow the on-screen prompts to choose an action.

## Potential Risks
- **Removing Directories:** The `rm -r` command is used to remove directories. This action is irreversible, so use it with caution.
