# Counter for Paxo
A simple counter app for PaxOS 9

## Install the app in the [PaxOS simulator](https://github.com/paxo-phone/PaxOS-9)
1. Download all the files (without the README), create a "compteur" folder in the "apps" folder (/storage/apps) and move the files into the "compteur" folder
2. Copy the "manifest.json" file of the app into the "permissions" folder (/storage/system/permissions) and rename the manifest file "compteur.json"
3. Open the auth.list file (in the same folder "permissions"), and add this line to the file : ./storage/apps/compteur/app.lua
4. Launch the simulator and go to the "Compteur" app and you're good to go ! Enjoy the app :)

## Preview
https://github.com/user-attachments/assets/5e3a907a-6290-452b-b7a2-2ac024b5ef68

![image](https://github.com/user-attachments/assets/bc900643-6ecf-43ad-aa59-9a1883cba88d)

