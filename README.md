# docker-x11-windows
Create a linux docker container with ubuntu as a POC to show how to open a linux graphical application inside docker and displayed in windows desktop

## what you will need

* docker desktop: https://docs.docker.com/desktop/install/windows-install/
* Xming: http://www.straightrunning.com/XmingNotes/
* Putty: https://putty.org/

## setup

After installing all 3 apps described above:

1) open a terminal pointing to the root folder of this project and run docker compose:

```bash
docker compose up
```

2) after the command above finish configure a new ubuntu docker container, open Putty and configure a new connection to `localhost` on port `2222`, and go to the left tree `Connection -> SSH -> X11` and check `Enable X11 forwarding`.

3) Open the connection with Putty using `root` and `password` as user and pass connection.

4) run the command at Putty terminal

```bash
xeyes
```

After step 4, you should see a new window opened with eyes that follows your mouse pointer.