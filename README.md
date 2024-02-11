# Docker Installation Script for Ubuntu

## Introduction
This script automates the installation process for Docker on Ubuntu-based systems. Docker is a platform for developing, shipping, and running applications using containerization technology.

## Prerequisites
- This script is intended for use on Ubuntu-based systems.
- Ensure you have sudo privileges to execute the script.
- It's recommended to run the script on a fresh installation of Ubuntu.

## Usage
1. Clone or download this repository to your Ubuntu-based system.
2. Navigate to the directory containing the script (`install_docker.sh`).
3. Make the script executable by running:
   ```
   chmod +x install_docker.sh
   ```
4. Execute the script with sudo privileges:
   ```
   sudo ./install_docker.sh
   ```
5. Follow the on-screen prompts to complete the installation process.

## What Does the Script Do?
- Removes existing Docker-related packages, if any.
- Updates the package list to ensure the latest versions are available.
- Installs necessary prerequisites such as ca-certificates, curl, and gnupg.
- Sets up Docker's official GPG key for package verification.
- Installs Docker CE, Docker CLI, Containerd, Docker Buildx Plugin, and Docker Compose Plugin.
- Restarts the Docker service to apply changes.

## Notes
- Ensure you understand the implications of each step before executing the script.
- After installation, Docker should be ready for use. You can verify the installation by running `docker --version`.
- For further information and advanced usage of Docker, refer to the official Docker documentation: [https://docs.docker.com/](https://docs.docker.com/)

## Feedback
If you encounter any issues or have suggestions for improvement, feel free to open an issue or submit a pull request on GitHub.
