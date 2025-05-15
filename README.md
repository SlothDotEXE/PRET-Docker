🖨️ PRET-Docker

Dockerized PRET (Printer Exploitation Toolkit)

This repository provides a Dockerized version of PRET, enabling users to exploit and test printer security with ease. By containerizing PRET, you can run it without worrying about system dependencies or Python 2 compatibility issues.

📦 Features

Runs PRET in a lightweight Docker container.

Ensures compatibility with Python 2.7.

Includes necessary dependencies: colorama, pysnmp, libusb, imagemagick, and ghostscript.

Optimized for size and efficiency.

Supports Linux, macOS, and Windows hosts.

🚀 Getting Started

Prerequisites

Docker installed on your system.

Build the Docker Image

Clone the repository and build the Docker image:

git clone https://github.com/SlothDotEXE/PRET-Docker.git
cd PRET-Docker
docker build -t pret-docker .

Run PRET

To run PRET with default settings:

docker run -it --rm pret-docker

To pass specific arguments to PRET:

docker run -it --rm pret-docker -h

Replace -h with your desired PRET arguments.

🛠️ Usage Examples

Targeting a Network Printer

docker run -it --rm pret-docker 192.168.1.100

Targeting a USB Printer (Linux)

docker run -it --rm --device=/dev/usb/lp0 pret-docker /dev/usb/lp0

Saving Session Logs

docker run -it --rm -v $(pwd)/logs:/app/logs pret-docker 192.168.1.100

This command mounts a local logs directory to the container's /app/logs directory, allowing you to save session logs persistently.

⚙️ Configuration

Base Image: python:2.7-slim

Installed Packages:

System: git, libusb-1.0-0, libusb-1.0-0-dev, imagemagick, ghostscript

Python: colorama, pysnmp

📁 .dockerignore

To optimize the Docker build context, the following files and directories are excluded via .dockerignore:

__pycache__/
*.pyc
*.pyo
*.pyd
*.swp
*.swo
*.egg-info/
*.eggs/
dist/
build/
.git/
.gitignore
Dockerfile
README.md

📄 License

This project is licensed under the MIT License.

🤝 Acknowledgements

RUB-NDS/PRET for the original Printer Exploitation Toolkit.

