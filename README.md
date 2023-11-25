# Managing-EC2-instances
Write a Linux shell script that manages EC2 instances, The script should provide the
following functionality:
1. Function: start_instance()
● Prompts the user to enter an instance ID.
● Uses the AWS CLI to start the specified instance.
● Displays a success message or an error message if the instance cannot
be started.
2. Function: stop_instance()
● Prompts the user to enter an instance ID.
● Uses the AWS CLI to stop the specified instance.
● Displays a success message or an error message if the instance cannot
be stopped
3. Function: list_instances()
● Uses the AWS CLI to retrieve a list of all running instances.
● Displays the instance ID, instance type, and public IP address for each
running instance.
4. Function: Terminate_instance()
● Prompts the user to enter an instance ID.
● Uses the AWS CLI to terminate the specified instance.
● Displays a success message or an error message if the instance cannot
be terminated.
5. Function: menu()
● Displays a menu with options for the user to choose from.
● Calls the appropriate global function based on the user's choice.
● Continues to display the menu until the user chooses to exit.
Write the shell script code and include comments to explain each section of the script.
To test your Script:
Run the Sandbox & Launch five instances before running your script.
Good Luck :)
