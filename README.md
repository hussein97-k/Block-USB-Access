
#  🔒 USB Port Control Panel (Batch Script)

A lightweight and easy-to-use Windows Batch Script to **block or unblock USB storage devices** on your system. Perfect for system administrators, IT technicians, or anyone who wants to control USB access on their PC.


## Features

- ✅ Block USB storage devices
- ✅ Unblock USB storage devices
- ✅ Simple and clean text-based interface
- ✅ One-click menu in a single `.bat` file
- ✅ 100% offline and portable
- 🛡️ Helps prevent unauthorized data transfers



## 💡 How It Works
This script modifies a registry key that controls the USBSTOR (USB Storage) driver on Windows:

| Action       | Registry Value |
|--------------|----------------|
| Block USB    | `Start = 4`     |
| Unblock USB  | `Start = 3`     |

> ⚠️ **Note:** This only affects USB **storage** devices (e.g., flash drives, external HDDs). It does not block USB keyboards, mice, etc.

## 🛠 Requirements
- Windows OS
- Administrator privileges (right-click → Run as Administrator)
## 📦 Usage
1. **Download** or clone this repository.
2. **Right-click** the `USB_Manager.bat` file and select **Run as Administrator**.
3. Choose from the menu:
   - `1` → Block USB storage
   - `2` → Unblock USB storage
   - `3` → Exit
## 🔐 Optional Features (Coming Soon)
- Password protection
- Logging activity
- GUI version (via PowerShell or VBScript)

## 👨‍💻 Author
**Hussein Karajah**  
Feel free to fork, share, or contribute!
