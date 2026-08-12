# taraKiosk 
Free Android Kiosk locktask cosu app
Alpha Version 1.0 (For testing)

# Features
- app data & cache clearing + google account clearing aka Deepfreeze
- delayed deepfreeze developer preference editable in my repo https://github.com/rjjrbatarao/rjjrbatarao.github.io loader folder
- turbo and battery saving app launching
- recent apps clearable
- app filter by letter
- quick launcher looping carousel
- esp32 smartcharging reboot recovery (anti deadbat)
- always display on game menu
- editable game lockscreen and game menu visit my repo https://github.com/rjjrbatarao/rjjrbatarao.github.io /menu and /loader folder
- whitelistable apps choose what to display in the game menu
- esp32 auto pairing with filter for fast pairing
- javascript bridge for printing and tablet kiosk https://github.com/rjjrbatarao/taraBridge note not updated yet
- docs will be released for full js bridge api's lots of bridge features to use.
- built in web server port on ip:8080 not yet documented for other future use
- esp32 to webserver bridging for other use case
- esp32 to webview bridging for more complex kiosk cash terminals
- editable game menu/lockscreen themes ongoing here https://github.com/rjjrbatarao/taraThemes
- ads blocker barckground task
- ads blocker whitelisting
- native notification sound bridge
- persistent timer background task
- send email bridge

# Prerequisite 
Freshly Factory reset Tablet </br>
Do not add any account after factory reset and make sure adb usb debugging enabled </br>
Enable adb usb </br>

# How to install for Users
- download the adb-win
- inside theres install-release.bat click and when success shows you may now open the app
- enable all required system permissions
- allow turning on bluetooth

# Settings
- copy this for lockscreen or scan qr (you may customize)
```
https://rjjrbatarao.github.io/loader
```
<img width="200" height="200" alt="image" src="https://github.com/user-attachments/assets/3335463e-39d4-4a4a-8ed6-3588352327df" />

- copy this for menu or scan qr (you may customize)
```
https://rjjrbatarao.github.io/menu
```
<img width="200" height="200" alt="image" src="https://github.com/user-attachments/assets/7ca1aada-499d-4dc0-a65f-02802e74981c" />

- add 6 digit password
- scan and connect bluetooth make sure esp32 is flashed and powered on
- add whitelist apps
- do not start yet download as many games as you want make sure to remove your acccount later as playstore requires google account

# Install For UI developers
- use the install-debug.bat
- connect to pc with adb enabled
- chrome://inspect/#devices
- You will see the below image
- click inspect
- if no device discovered just wait
<img width="1430" height="637" alt="image" src="https://github.com/user-attachments/assets/4e12f6b7-aa94-401e-bdd0-8fff748c7f68" />
<img width="910" height="861" alt="image" src="https://github.com/user-attachments/assets/1640ae93-4ec8-498c-a5c1-5cad2f7e1058" />

## Customizations
Open this link it contains the sample loader and menu folder source code for the lockscreen https://github.com/rjjrbatarao/rjjrbatarao.github.io </br>
Open this link for esp32 library https://github.com/rjjrbatarao/taraArduinoLib </br>
The Game menu and Lockscreen can be deployed on github pages or any free static site server, study the index.js and script.js</br>
Customize and make your own personalized Game menu.  </br>

## Todo
- blank screen bug ongoing fix validation
- bluetooth not reconnecting ongoing fix validation
- printer.js cleaner import js library for accessing printing capabilities
- bridge.js cleaner import js library for the tablet vending operation


  

