#!/bin/bash

sudo systemctl stop zomboid.service
sudo rm -rf Zomboid/backups/startup/*
sudo rm -rf Zomboid/backups/version/*
sudo rm -rf Zomboid/Saves/Multiplayer/*
sudo systemctl start zomboid.service
