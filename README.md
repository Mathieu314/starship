# starship-Conky

/!\ Please be aware that this work is in progress. It is firstly a backup of all my config files. So I'm sorry if it doesn't work on your machine.

## Installation
### Download starship
git clone https://github.com/Mathieu314/starship ~/.conky/

### Download specific programs
- conky
- dzen2 (for the top bar)

This list isn't exhaustive for the moment

## Configuration
For the moment all paths are hard coded in all the files. I hope I'll have the time to make them relative

### Gmail
For the gmail.py script you should create the file ~/.config/conky_gmailrc :
```
[configuration]
email = <your_email>
password = <your_password>
```
Be aware that it only works with gmail addresses.

### Start
You can start everything by running the script ~/.conky/scripts/launchConky.sh
If you are using you can also launch it at the start of your session by putting a line in your autostart file.

## Contact
For any question don't hesitate to contact me at :
mathieu.moneyron@gmail.com
