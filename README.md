## OSX Catalina Quarantine Attribute Removal Tool
With the introduction of OSX Catalina, apps that have not been verified directly through
the Apple mechanisms won't be allowed to start due to an attribute added to the .app file
on download from the internet.

This tool removes that attribute from the file.

### How to use
Open the OSX Terminal app, navigate to a location of your choice and clone the repository.
```
git clone https://github.com/bochko/osx-quarantine-attr-remove.git
```
Navigate to the newly downloaded folder.
```
cd osx-quarantine-attr-remove
```
The command will likely not be allowed unsupervised execution, so you will need to allow execution for its first run.
```
sudo chmod +x rquarantine.command
```

**Double click *rquarantine.command* (or execute directly from shell using `./rquarantine.command`), enter the path to the application and press [ENTER]**
