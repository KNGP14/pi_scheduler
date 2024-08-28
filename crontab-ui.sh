#! /bin/bash
source ${HOME}/.bashrc

cd ${HOME}/pi_scheduler
export CRON_DB_PATH=${HOME}/pi_scheduler
export HOST=0.0.0.0
export PORT=8000
export BASE_URL=/
export BASIC_AUTH_USER=seiko
export BASIC_AUTH_PWD=pixel
node /usr/bin/crontab-ui
