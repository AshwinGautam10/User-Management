# Linux User Management Automation

A Bash Shell Scripting project that automates Linux user creation, password generation, and account management.

## Project Overview

This project simplifies Linux user management by automating the process of creating new users and assigning randomly generated passwords.

## Features

- Create Linux users automatically.
- Accept username and comments through command-line arguments.
- Generate random passwords using OpenSSL.
- Automatically set passwords using `chpasswd`.
- Force users to change their password on first login.
- Check root/sudo privileges before execution.
- Handle errors during user creation.

## Technologies Used

- Linux (Ubuntu)
- Bash Shell Scripting
- OpenSSL
- User Management Commands

## Project Structure

```text
User-Management/
│
├── user-make.sh
└── README.md
```

## Prerequisites

- Linux operating system
- Bash shell
- OpenSSL installed
- Sudo/root privileges

## Installation

Clone the repository:

```bash
git clone https://github.com/AshwinGautam10/User-Management.git
```

Navigate to the project directory:

```bash
cd User-Management
```

Give execution permission:

```bash
chmod +x user-make.sh
```

## Usage

Run the script with sudo privileges:

```bash
sudo ./user-make.sh Gautam This is comment
```

### Example Output

```text
Username: Gautam

Password: [Generated Random Password]

Host: ip-172-31-12-109
```

**Note:** The password is randomly generated using OpenSSL.

## Commands Used

| Command | Purpose |
|---|---|
| `useradd` | Create a new Linux user |
| `chpasswd` | Set user password |
| `openssl rand` | Generate random password |
| `passwd -e` | Force password change |
| `id` | Verify user details |
| `chage` | Manage password expiration |

## Learning Outcomes

Through this project, I learned:

- Linux user and account management.
- Shell scripting and command-line arguments.
- Password generation and management.
- Conditional statements and error handling.
- Linux automation using Bash.

## Author

**Ashwin Gautam**

GitHub: https://github.com/AshwinGautam10
