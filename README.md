# TraderScript

Dockerized program to setup InfluxDB with config script for daytrading purpose.

## Prerequisites

Install `git` and `docker`.

## Initial setup:

Clone the repo, navigate to `TraderScript` and execute `init.cmd` (Windows) or `init.sh` (Linux)

## Run the program

Execute `startup.cmd` (Windows) or `startup.sh` (Linux).

## Testing

The `testing` directory contains a example config file (`config.txt`) and a server for providing mock data from a DAX data set.
To start the server install `nodejs`, navigate to `testing/server` and run `node server.js`.
The default port is 3001. If you want to change it set the environment variable `MOCK_SERVER_PORT`.
The default endpoints are `POST` requests to `/test1`, `/test2`, `/test3`, `/test4`.
On `POST` request they log the corresponding endpoint to the console.

## Troubleshooting

On windows when starting the docker container sometimes the following error occurs:
`standard_init_linux.go:190: exec user process caused "no such file or directory"`

Problem: Windows uses `CRLF` linebreak style but for scripts `LF` is required.

Solution: You have to change the linebreak style for the files `data/run.sh` and `data/watch.sh`.

Steps:
 - delete the repo and pull it again
 - In Notepad++ go to edit -> EOL conversion -> change from CRLF to LF.
 - in VS Code you can change the style in the status bar on the bottom of the page 
 - then run again `init.cmd` and then `startup.cmd`. It should solve the problem.
