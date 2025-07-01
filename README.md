# Draco Panel Docker Installer

This repository provides a Docker-based setup for deploying the Draco Hosting Panel.

## Features

- Runs Draco Panel inside a PHP 8.2 + Apache Docker container
- Uses MariaDB for the database
- Simple `install.sh` script to automate installation and setup
- Designed to run on servers with high resources (e.g., 32GB RAM, 8 CPU cores)

## Requirements

- Docker and Docker Compose installed on your server or local machine
- Git (to clone the repo)

## Quick Start

```bash
git clone https://github.com/proobbby/draco-docker.git
cd draco-docker
chmod +x install.sh
./install.sh
