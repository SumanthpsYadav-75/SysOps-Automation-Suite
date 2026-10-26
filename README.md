# SysOps Automation Suite

## 📌 Project Overview
SysOps Automation Suite is a Bash-based project designed to automate common Linux system administration tasks through a menu-driven script. It helps simplify routine operations and improve efficiency using shell scripting.

## 🚀 Features
- **User Management:** Checks whether a Linux user exists and creates a user if needed.
- **File Backup:** Creates source and destination directories and copies files for backup.
- **Software Installation:** Checks command availability and attempts to install missing tools using APT.
- **Disk Usage Monitoring:** Retrieves disk information using Linux commands.

## 🛠️ Technologies Used
- Linux
- Bash Shell Scripting
- APT Package Manager
- Linux Commands: `df`, `awk`, `sed`, `cp`, `useradd`

## 📂 Project Structure
```text
sysops-automation-suite/
├── sysops.sh
└── README.md
```

## ⚙️ Prerequisites
- A Linux operating system
- Bash shell
- Sudo privileges for user management and software installation
- APT package manager (Ubuntu/Debian-based systems)

## ▶️ How to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/YOUR-USERNAME/sysops-automation-suite.git
   ```

2. Navigate to the project directory:
   ```bash
   cd sysops-automation-suite
   ```

3. Give execute permission:
   ```bash
   chmod +x sysops.sh
   ```

4. Run the script:
   ```bash
   ./sysops.sh
   ```

## 📚 Concepts Practiced
- Bash functions
- Conditional statements (`if`, `else`)
- User input using `read`
- Case statements
- Exit status checking
- File and directory operations
- Linux command-line utilities
- Basic task automation

## 🎯 Project Objective
To gain practical experience in Linux system administration and Bash scripting while building a foundation for DevOps automation.

## 👨‍💻 Author
Created as a hands-on project during my DevOps learning journey.

---

**Note:** This project is intended for learning and practice. Review commands and permissions before running it on a production system.
