# kgtool (kgtool)

A new, modern website for K & G Tool Co built on Quasar project

## Prerequisites

Make sure node and npm are installed on your machine

## Windows and MacOS install

Step 1: Download Node.js Installer

    In a web browser, navigate to the Node.js Downloads page: https://nodejs.org/en/download/

    Click the Windows Installer button to download the latest stable version with long-term support (LTS). The installer also includes the NPM package manager.

Step 2: Install Node.js and NPM

    After downloading the installer, follow the steps below:

      1. Launch the installer by double-clicking the downloaded file.

      2. The Node.js Setup Wizard starts with the welcome screen.

      Click Next to proceed.

      3. Review the end-user license agreement and click the checkbox to accept the terms and conditions.

      Click Next to continue.

      4. The installer asks to choose the installation location.

      Leave the default location for a standard installation and click Next to proceed.

      5. Select components to include or remove from the installation. The default options install Node.js, NPM, corepack, online documentation shortcuts, and add the programs to PATH.

      Customize the setup or click Next to accept the default values.

      6. The following section shows the total required space for the installation and the available space on disk.

      Click OK to proceed. Select a different disk or install fewer features if the installation does not allow proceeding.

      7. Choose whether to install additional dependencies for compiling native modules. Some NPM modules compile from C/C++ and require additional tools to function correctly (Python, Visual Studio Build Tools, and Chocolatey).

      If you use such modules, select the checkbox and click Next. The selection of this option starts an installation script after the Node.js installation is complete.

      For a simple installation, skip this step and click Next to proceed.

      8. Click the Install button to start the installation.

## Linux/WSL Install

This will change per distro. Ubuntu used as example:

Run the following:
sudo apt update
sudo apt install nodejs
-Optional: run node -v to check install completed
sudo apt install npm
-Optional: run npm -v to check install completed

## Install the dependencies

Open terminal and CD to the project, then run:

```bash
yarn (Linux only)
# or
npm install
```

### Start the app in development mode (hot-code reloading, error reporting, etc.)

```bash
quasar dev
```

This will open the application in localhost, port 8080 by default

### Lint the files

```bash
yarn lint
# or
npm run lint
```

### Format the files

```bash
yarn format
# or
npm run format
```

### Build the app for production

```bash
quasar build
```

### Customize the configuration

See [Configuring quasar.config.js](https://v2.quasar.dev/quasar-cli-vite/quasar-config-js).
