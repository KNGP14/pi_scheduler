## SETUP

Klonen:

```
cd $HOME
git clone ...
cd pi_scheduler
```

crontab sichern:

`crontab -l > crontab-backup_before-_crontab-ui.txt`

NodeJS installieren auf Raspberry:

```
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs
node -v
sudo ln -s /usr/bin/node /usr/local/bin/node
```

Crontab-UI (global) installieren:

```
sudo npm install -g crontab-ui
mkdir logs
```

## STARTEN

`CRON_DB_PATH=$HOME/pi_scheduler HOST=pi-2b.local PORT=8000 BASE_URL=/ BASIC_AUTH_USER=seiko BASIC_AUTH_PWD=pixel crontab-ui`

## SERVICE
- in .service-Datei den Pfad zum Skript anpassen
- `sudo cp pi_scheduler.service /etc/systemd/system/`
- `sudo systemctl daemon-reload`
- `sudo systemctl enable pi_scheduler.service`
- `sudo systemctl start pi_scheduler.service`
- `sudo systemctl status pi_scheduler.service`
