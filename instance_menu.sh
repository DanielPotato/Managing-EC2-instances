#!/bin/bash

#Function to start an EC2 instance
start_instance() {
    read -p "Enter the instance ID to start: " instance_id
    aws ec2 start-instances --instance-ids $instance_id

    if [ $? -eq 0 ]; then
        echo "Instance $instance_id started successfully."
    else
        echo "Error starting instance $instance_id. Please check the instance ID and try again."
    fi
}

#Function to stop an EC2 instance
stop_instance() {
	read -p "Enter the instance ID to start: " instance_id
	aws ec2 stop-instances --instance-id $instance_id
	
	if [ $? -eq 0 ]; then
		echo "Instance $insatnce_id stopped successfully."
	else
		echo "Error stopping instance $instance_id. Please check the instance ID and try again."
	fi
}

#Function to list an EC2 instance
list_instance() {
	echo "List of running instances:"
	aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" \
	--query 'Reservations[*].Instances[*].[InstanceId,InstanceType,PublicIpAddress]' --output table
}

#Function to terminate an EC@ instance
terminate_instance() {
    read -p "Enter the instance ID to terminate: " instance_id
    aws ec2 terminate-instances --instance-ids $instance_id

    if [ $? -eq 0 ]; then
        echo "Instance $instance_id terminated successfully."
    else
        echo "Error terminating instance $instance_id. Please check the instance ID and try again."
    fi
}

#Function that lists the menu of options
menu() {
	echo "********* EC2 Instance Management Script *********"
	echo "1. Start an instance"
	echo "2. Stop an instance"
	echo "3. List running instances"
	echo "4. Terminate an instance"
	echo "5. Exit"
}

while true; do
	menu 
	read -p "Enter your choice (1-5): " choice
	
	case $choice in 
		1) start_instance ;; 
		2) stop_instance ;;
		3) list_instance ;;
		4) terminate_instance ;;
		5) echo "Existing script. Goodbye!"; exit ;;
		*) echo "Invalid choice. Please enter a number between 1 and 5."
	esac
done
	
	
	
	
	
	
	
	
	
	
	
	


