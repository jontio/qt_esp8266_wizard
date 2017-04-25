# qt_esp8266_wizard
A wizard for intergrating embeded ESP8266 modules into QtCreator using Arduino style setup loop thing.


## Requirements

Probably lots.

You will need at least...

* Qtcreator
* https://github.com/plerup/makeEspArduino
* https://github.com/esp8266/Arduino
* perl
* others??

Getting MakeEspArduino working was a bit tricky, I had to add the following code to line 175 of the makeEspArduino.mk makefile before it would compile things for me. 

```
TMPVAR := $(CPP_COM)
CPP_COM = $(filter-out -o, $(TMPVAR))

TMPVAR2 := $(S_COM)
S_COM = $(filter-out -o, $(TMPVAR2))

TMPVAR3 := $(C_COM)
C_COM = $(filter-out -o, $(TMPVAR3))
```


## Folders

The esp8266 folder goes into your QTcreator's template wizard directory. For me this went in `E:\msys64\mingw64\share\qtcreator\templates\wizards`

The jserialmon folder is a Qt CLI project that you can use to see the output from the esp8266. This I just built with Qtcreator in the usual manor.

## Screenshots

The wizard is minimal but does all I need it to do at the moment. You just click `File`, `New File or Project`, then `Other Project` and `ESP8266 Project` to start the wizard.

![](8266wizard.png)

Once the wizard has done it's thing you can use Qtcreator for your ESP8266 project. Qtcreator has the best autocompleation of any IDE so I highly recommend it.

![](esp8266-console.png)

I'm always making mistakes and forgetting things so being able to press ctrl-space to find something it somthing I can't do without anymore. Qt really has spoiled me.

![](autocompleate.png)

To get the run button working requires adding a make step in the run section of project tab, in my case `mingw32-make.exe flash`. Then for the executable I put in `jserialmon.exe` with command line arguments of `COM8 9600`. Now if I press run the program is compiled, flashed and a serial monitor is started. If I press build it only compiles.

![](eps8266-flash-and-sermon-setup.png)
