# Internet Speed Test Script

This project is a **Bash script** that tests internet speed on macOS. The script automates the installation of necessary tools and provides a log of speed test results.

---

## Features

- **Automatic Installation**: Installs `Homebrew` and `speedtest-cli` if they are not already installed.
- **Internet Speed Test**: Measures download speed, upload speed, and ping.
- **Logging Results**: Saves speed test results to a log file for future reference.

---

## Requirements

- macOS operating system.
- Internet connection.

---

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/obaidmedweb/internet-speed-test.git
   cd internet-speed-test
   ```

2. Make the script executable:
   ```bash
   chmod +x speedtest.sh
   ```

---

## Usage

Run the script with the following command:
```bash
./speedtest.sh
```

### What It Does:
- Checks if `speedtest-cli` is installed.
- Installs `Homebrew` and `speedtest-cli` automatically if needed.
- Runs a speed test and displays the results (Download, Upload, and Ping).
- Logs the results to `internet_speed_log.txt`.

---

## Log File

The results of each speed test are saved in a file named `internet_speed_log.txt`. Each entry includes:
- Date and time of the test.
- Download speed.
- Upload speed.
- Ping.

---

## Example Output

### Console Output:
```bash
Testing internet speed... Please wait.
Results:
Ping: 12.34 ms
Download: 123.45 Mbps
Upload: 67.89 Mbps
Results saved to: internet_speed_log.txt
```

### Log File (`internet_speed_log.txt`):
```
-----------------------------
Mon Jan 1 12:00:00 2025
Ping: 12.34 ms
Download: 123.45 Mbps
Upload: 67.89 Mbps
-----------------------------
```

---

## Contributions

Contributions are welcome! If you have suggestions for improvement or new features, feel free to:
1. Fork the repository.
2. Create a new branch.
3. Submit a pull request.

---


## Author

Developed by [Your Name](https://github.com/obaidmedweb).

