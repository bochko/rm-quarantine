## macOS Catalina quarantine attribute removal tool

On macOS Catalina, apps that have not been signed by Apple won't be allowed to start due to an attribute added on download from the internet.

This tool removes that attribute from the file.

### How to use
Open the OSX Terminal app, navigate to a location of your choice and clone the repository.
```
git clone https://github.com/bochko/rm-quarantine.git
```
The command will likely not be allowed unsupervised execution, so you will need to allow execution for its first run.
```
sudo chmod +x <RM_QUARANTINE_DIR>/rquarantine.command
```
**Double click *rquarantine.command* (or execute directly from shell using `./rquarantine.command`), enter the path to the application and press `[ENTER]`**
