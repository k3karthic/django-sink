# Django Kitchen Sink

A Django playground to explore the various features offered by the framework.

View Online: [https://tornoddballobservatory.k3karthic.repl.co/](https://tornoddballobservatory.k3karthic.repl.co/)

## Code Mirrors

* GitHub: [github.com/k3karthic/django-sink](https://github.com/k3karthic/django-sink)
* Codeberg: [codeberg.org/k3karthic/django-sink](https://codeberg.org/k3karthic/django-sink)

## Replit

[Replit](https://replit.com/) runs `main.py` to start the Django server. `main.py` in turn runs `replit_init.sh` to initialize the REPL with SSH & GPG.

SSH configuration is for pushing updates to the Codeberg mirror. GPG configuration is for signing commits.

Run the following command from the shell before doing a commit,
```
export GPG_TTY=$(tty)
```
