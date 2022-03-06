This tool bombards a lot of addresses at Russia.

Recomendations:
Highly recommended to use VPN. Perfectly inside Russia. Change your IP frequently.
Do not start more then one container, it needs a lot of resources and second container could even make it working worse.
You could increase or decrease power of the tool by changing CONNECTIONSPERTARGET variable at 'ddos.sh'.
Performance could degrade after hours of working. Restarting Docker helps. Docker itself, not container.
If you are about to alter 'ddos.sh' file, then please, be sure to save if with Unix(LF) Ending Of Line(https://en.wikipedia.org/wiki/Newline#Representationj). 'Notepad++' allow you to do so at right bottom corner.
There are some reports about Docker dieing during invocation at MacOS. If you would find the source of the issue, please, reach us and inform. 

How to run:

1) Install Docker.
2) Open Command Line.
3) Open in Command Line the place where this file is located(use commands 'cd' and 'dir' to navigate on Windows, or 'cd' and 'ls' on Unix)
4) Run those two commands at Command Line without quotes:

	"docker build -t justice:latest ."
	"docker run justice"


To stop container:
	"docker container ls"
	"docker stope <name>"
Name would be at 'ls' result.
