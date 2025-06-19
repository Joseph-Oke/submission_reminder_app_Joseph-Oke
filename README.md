# Submission Reminder App

Author: Oke Joseph Enitan 


# What I Did
I created 2 shell scripts for a student reminder app:

1.create_environment.sh (This script makes the app folder and files)
2.copilot_shell_script.sh (This script changes assignment names)


# How It Works

# Script 1: Setting Up the App
Asks for your name
Makes a folder called "submission_remainder_Joseph"
Creates all the files needed for the app
Makes files executable

# Script 2: Changing Assignments
Finds your app folder
Lets you change the assignment name
Updates the config file
Runs the app with new assignment


# Step 1: Make the App (I basically made the script executable)
chmod u+x create_environment.sh
./create_environment.sh

Type your name when it asks.


# Step 2: Run the App (Basically means running the scripts)
bash
cd submission_remainder_joseph/app
./startup.sh


# Step 3: Change Assignment
bash
./copilot_shell_script.sh

Type the new assignment name.


# Files Created
submission_reminder_Joseph/
├── config
│   └── config.env
├── data
│   └── submissions.txt
└── scripts
    ├── functions.sh
    ├── reminder.sh
    └── startup.sh

And also a README.md file that contain's instructions on how to run the application


# Troubleshooting
permission denied: Run chmod u+x (Scripts name)
App not found: Ensure create_environment.sh compleeted successfully
Config not updating: Check config/config.env for changes


# How to run the application
Step 1: Run the setup script
./create_environment.sh

When prompted, enter your name (this will create a directory named submission_reminder_(Name))

Step 2: Navigate to Your Application Directory
cd submission_reminder_(Name)

(Replace (Name) with the name you entered during setup)

Step 3: Run the Application
Execute the startup script:
./startup.sh
