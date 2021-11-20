# Django Kitchen Sink

A Django playground to explore the various features offered by the framework.

View Online: [https://tornoddballobservatory.k3karthic.repl.co/](https://tornoddballobservatory.k3karthic.repl.co/)

## Code Mirrors

* GitHub: [github.com/k3karthic/django-sink](https://github.com/k3karthic/django-sink)
* Codeberg: [codeberg.org/k3karthic/django-sink](https://codeberg.org/k3karthic/django-sink)

## Replit

`main.py` is run by [Replit](https://replit.com/) to start the Django server.

`replit_init.sh` is called from `main.py` to initialize the REPL with SSH & GPG.

The SSH configuration is used to push updates to the Codeberg mirror.

GPG is used to sign commits. Run the following command from the shell before doing a commit,
```
export GPG_TTY=$(tty)
```