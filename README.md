# Hospital Monitoring System Group 23

This project helps monitor heart rates in a hospital by saving heart rate data, archiving the logs, and backing them up to a remote server.

---

## Team attendance

- Tapiwanashe Gift Marufu:Active
- Betelhem Feleke Cheleb:Active
- Samuel Kwizera Ihimbazwe:Active
- Kadi Matou Koita:Active
- Salomon Uwimana Masasu:Active
- Enock Mugisha:Active

---

## Project Structure

This project has three shell scripts:

1. **heart_rate_monitor.sh** – Records heart rate data.
2. **archive_log.sh** – Archives (compresses) the heart rate log.
3. **backup_archives.sh** – Backs up the archived logs to a remote server.

---

## Requirements

- Linux (tested on Ubuntu 20.04)
- Bash shell (version 5 or higher)
- Internet access to back up the logs to a remote server.
# Setup

### 1. Clone the repository:
```bash
git clone https://github.com/enockmugisha1/hospital_monitoring_group_23.git
```

```bash
cd hospital_monitoring_group23
```

### 2. Make sure the scripts are executable in case they are not:
```bash
chmod u+x heart_rate_monitor.sh archive_log.sh backup_archives.sh
```

---

# How to Run the Scripts

## 1. Heart Rate Monitoring (`heart_rate_monitor.sh`)

This script simulates heart rate monitoring and logs the data every second.

### Usage:
```bash
./heart_rate_monitor.sh
```

- The script will prompt you for a device name (e.g., "Monitor_A", "Monitor_B").
- Heart rate data will be recorded in `heart_rate_log.txt` with a timestamp and device name.
- The heart rate values are expected to be within the normal range (60 - 100 bpm).
- The script runs in the background, and the process ID (PID) will be displayed.
- You can use the PID to stop the script if needed.

### Log Example:
```
2024-10-03 14:35:02 Monitor_A 61
2024-10-03 14:35:03 Monitor_A 67
```

### To check the logs:
```bash
tail -f heart_rate_log.txt
```

---

## 2. Archiving the Logs (`archive_log.sh`)

This script archives the `heart_rate_log.txt` file into a compressed format.

### Usage:
```bash
./archive_log.sh
```

- The script compresses `heart_rate_log.txt` into a tar archive with a timestamped filename.
  
---

## 3. Backing Up the Logs (`backup_archives.sh`)

This script backs up the archived log files to a remote server.

### Usage:
```bash
./backup_archives.sh
```

- The script connects to the specified remote server using credentials and uploads the archived logs.
# Hospital Monitoring Group 23

This repository contains scripts for monitoring, archiving, and backing up heart rate logs in a hospital monitoring system. The scripts automate the process of recording heart rate data, archiving log files with timestamps, and securely backing up the logs to a remote server using SSH.

## Scripts Included

1. **Heart Rate Monitor (heart_rate_monitor.sh)**
   - This script continuously monitors and logs the heart rate of a patient.
   - The logs are recorded in the `heart_rate_log.txt` file.

2. **Log Archival (archive_log.sh)**
   - This script archives the `heart_rate_log.txt` file by renaming it with a timestamp.
   - **Usage:**
     ```bash
     ./archive_log.sh
     ```
   - The log file will be renamed in the format: `heart_rate_log.txt_YYYYMMDD_HHMMSS`.
     - **Example:** `heart_rate_log.txt_20241003_143501`

3. **Archival and Backup (backup_archives.sh)**
   - This script moves the archived log files to the `archived_logs_group23` directory and securely backs them up to a remote server via SSH.
   - The backup process uses Team member **Betelhem** sandbox credentials for the remote server.
   - **Usage:**
     ```bash
     ./backup_archives.sh
     ```
   - All archived logs will be moved to the `archived_logs_group23` directory.
   - The script will back up the files to Betelhem's server in the home directory using `scp` with SSH authentication.

## Submission Details
- **GitHub Repository:** hospital_monitoring_group23
- This project includes all three scripts:
  - `heart_rate_monitor.sh`
  - `archive_log.sh`
  - `backup_archives.sh`


