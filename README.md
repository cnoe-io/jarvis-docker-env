# JARVIS Docker Environment
The JARVIS Docker Environment provides all the required tools for development in an isolated and portable containerized setup.

## Prerequisites
Ensure you have the following installed on your system
-	Docker
-	Bash

## Supported Platforms
-	Mac OS X: Tested ✅
-	Ubuntu: Tested ✅
-	Windows: Support coming soon (TODO) 🚧

## Super Quick Start 🚀
To get started right away, simply run the following command:
```
./run.sh
```

## Build the Docker Image (Optional)
If you need to build the Docker image manually, run:
```
./pull.sh
```

## Run the Container
To launch the container, use:
```
./run.sh [WORKDIR]
```
**Notes:**
- WORKDIR: Optional. Defaults to $HOME/workspace.
- The WORKDIR will be mounted inside the container @ /workspace

## Attach Another Shell to the Running Container
If you need to open another shell session inside the running container, execute:
```
./attach.sh
```
