# predatop
predator needs nbfc-linux and acer-predator-turbo-and-rgb-keyboard-linux-module 
https://github.com/JafarAkhondali/acer-predator-turbo-and-rgb-keyboard-linux-module
You have to install nbfc-linux manually through apt/pacman or the graphical Software-management-interface of your Distro.

NOTE: -f 0 is CPU fan and -f 1 is GPU fan 

It regulates fan speed in steps of 10%.

Please set your model name:
"sudo nbfc config --set auto" to find automatically a matching profile
or
"sudo nbfc config --recommend"

if that doesnt work, search for your model via 
"sudo nbfc config  -l | grep NAME OR VENDOR"
