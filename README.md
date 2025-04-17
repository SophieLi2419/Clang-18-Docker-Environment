# 🐳 Clang 18 Docker Environment

A lightweight, ready-to-use Docker-based development environment for **C/C++** using **Clang 18** on **Debian Bookworm Slim**. Ideal for compiling, linting, formatting, and testing modern C/C++ projects.

---

## ✨ Features

- ✅ **Clang 18**, Clang-Tidy, Clang-Format, LLD
- 🧰 Development essentials: Git, CMake, Make
- 📚 Uses **libc++** and **libc++abi**
- 🔄 Automatically mounts your source code to `/workspace`
- 🚀 One-step helper script to build and launch the container

---

## 📦 Requirements

- [Docker](https://www.docker.com/) (v20+ recommended)
- Bash shell (for using the helper script)
- [Visual Studio Code](https://code.visualstudio.com/) (optional, for container attachment)

---

## ⚙️ Usage

### 1. Clone the Repository

```bash
git clone https://github.com/SophieLi2419/Clang-18-Docker-Environment.git
cd Clang-18-Docker-Environment
```

### 2. Build and Run the Container

Use the provided script to build the image and start the container:

```bash
./build-and-run.sh <container-name> <path-to-your-source>
```

📌 **What this does:**
- Builds the Docker image using `18-bookworm.Dockerfile`
- Mounts your source directory into the container at `/workspace`
- Starts the container in **detached mode**

#### Example:
```bash
./build-and-run.sh clang18-dev ~/projects/my-cpp-app
```

---

## 🖥️ Connect via VS Code

You can attach to the running container using [VS Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers):

1. Open the Command Palette (`Ctrl+Shift+P`)
2. Select `Remote-Containers: Attach to Running Container...`
3. Choose your container (e.g. `clang18-dev`)

---

## 📁 File Structure

```
clang18-docker/
├── 18-bookworm.Dockerfile       # Dockerfile with Clang 18 setup
├── build-and-run.sh             # Helper script to build and run the container
└── README.md                    # You're here!
```

---

## 🧱 Built With

- [LLVM/Clang](https://clang.llvm.org/)
- [Docker](https://www.docker.com/)
- [Debian Bookworm Slim](https://www.debian.org/releases/bookworm/)

---

## 📜 License

MIT — see [LICENSE](LICENSE) for details.
