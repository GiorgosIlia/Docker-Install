# Docker Installation Script

This script automates the installation process for Docker on Ubuntu-based systems. It performs the following steps:

1. Removes existing Docker-related packages if any.
2. Updates the package list.
3. Installs necessary prerequisites including ca-certificates, curl, and gnupg.
4. Creates a directory for apt keyrings.
5. Downloads Docker's official GPG key and stores it in the keyring directory.
6. Sets appropriate permissions for the GPG key file.
7. Installs Docker CE, Docker CLI, Containerd, Docker Buildx Plugin, and Docker Compose Plugin.
8. Restarts the Docker service.

## Usage

1. Clone or download this repository to your Ubuntu-based system.
2. Make sure the script `install_docker.sh` is executable by running `chmod +x install_docker.sh`.
3. Execute the script with sudo privileges: `sudo ./install_docker.sh`.
4. Follow the on-screen prompts and wait for the installation to complete.

## Notes

- This script assumes you are using an Ubuntu-based system.
- Make sure you have sudo privileges to execute the script.
- After installation, Docker should be up and running, ready for use.
- Please ensure you understand the implications of each step before executing the script.

