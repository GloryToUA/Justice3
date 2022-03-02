This tool bombards a lot of addresses at Russia.

Recomendations:
Do not start more then one container, it needs a lot of resources and second container could even make it working worse.
Porformance could degrade after hours of working. Restarting Docker helps. Docker itself, not container.
Highly recommended to use VPN. Perfectly inside Russia. Change your IP frequently.

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
