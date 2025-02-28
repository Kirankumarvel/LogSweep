# LogSweep

🧹 LogSweep: Automated Log & Temp File Cleanup 🚀  
Automate the cleanup of old log and temp files to keep your system optimized and free from clutter.

## 📌 About LogSweep
LogSweep is a lightweight and efficient automation tool designed to delete old log and temporary files, preventing disk space issues and keeping your system clutter-free. It can be scheduled via cron jobs for full automation.

## 🚀 Features
- ✅ Automatically deletes log & temp files older than a set number of days.
- ✅ Configurable paths & retention period via a simple config file.
- ✅ Keeps a log of all cleanup actions.
- ✅ Lightweight & fast execution.
- ✅ Works with cron jobs for full automation.

## 📜 Table of Contents
- 📌 About the Project
- 🚀 Features
- 🛠️ Project Structure
- ⚡ Installation & Usage
- 📅 Automate with Cron Jobs
- 📜 Future Enhancements
- 💡 Contributing
- 📩 Contact

## 📌 About the Project
This Bash script automatically removes log and temporary files older than X days from a configured directory. It helps prevent disk space issues and improves system performance by deleting unnecessary files regularly.

## 🚀 Features
- ✅ Deletes log and temporary files older than a specified number of days.
- ✅ Uses a configuration file for easy customization.
- ✅ Keeps a log file of all cleanup actions.
- ✅ Can be scheduled with a cron job for full automation.
- ✅ Lightweight & efficient – runs in seconds!

## 🛠️ Project Structure
```
auto-log-cleanup/
├── scripts/
│   └── cleanup.sh             # Main script to delete old logs/temp files
├── config/
│   └── config.env             # Configuration file (threshold days, directories)
├── logs/
│   └── cleanup.log            # Stores cleanup history
├── .gitignore                 # Ignores sensitive files
├── README.md                  # Project documentation
└── cronjob.txt                # Cron job setup guide
```

## ⚡ Installation & Usage
1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/auto-log-cleanup.git
   cd auto-log-cleanup
   ```

2. **Configure Cleanup Settings**
   - Edit the configuration file:
     ```bash
     nano config/config.env
     ```
   - Modify these values:
     ```bash
     LOG_DIR="/var/log/myapp"        # Directory for log files
     TEMP_DIR="/tmp/myapp"           # Directory for temp files
     DAYS_OLD=7                      # Delete files older than 7 days
     ```

3. **Make the Script Executable**
   ```bash
   chmod +x scripts/cleanup.sh
   ```

4. **Run the Script Manually**
   ```bash
   ./scripts/cleanup.sh
   ```
   This will delete all log/temp files older than 7 days and save the action in `logs/cleanup.log`.

## 📅 Automate with Cron Jobs
To run the script automatically every day at midnight, schedule it using cron:

- Open the cron job editor:
  ```bash
  crontab -e
  ```
- Add this line at the bottom:
  ```bash
  0 0 * * * /bin/bash /path/to/auto-log-cleanup/scripts/cleanup.sh
  ```
- Save & exit. Your script will now run daily! 🎉

## 📜 Future Enhancements
- 🔹 Email notifications after each cleanup.
- 🔹 Store logs in a database for analytics.
- 🔹 User-friendly CLI menu for configuring the script.

## 💡 Contributing
🔥 Want to improve this project? Feel free to:
- ✅ Fork the repository
- ✅ Submit a pull request
- ✅ Report bugs or request features

## 📩 Contact
- 🔹 GitHub: [https://github.com/Kirankumarvel/LogSweep]
- 🔹 LinkedIn: [https://www.linkedin.com/in/kirankumarvel/]


🤝 Let’s build efficient automation together! 🚀
