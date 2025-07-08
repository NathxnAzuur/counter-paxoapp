# Counter for Paxo
A simple counter app for PaxOS 9

![image](https://github.com/user-attachments/assets/bc900643-6ecf-43ad-aa59-9a1883cba88d)

## Install the app in the [PaxOS simulator](https://github.com/paxo-phone/PaxOS-9)
1. Download all the files (without the README) and and move the files into the "apps" folder (/storage/apps)
2. Copy the manifest.json file into the "permissions" folder (/storage/system/permissions) and rename the manifest file "compteur.json"
3. Go to the auth.list file (in the same folder "permissions"), and add this line to the file : ./storage/apps/compteur/app.lua
4. Launch the simulator and go to the "Compteur" app and you're good to go ! Enjoy the app :)
