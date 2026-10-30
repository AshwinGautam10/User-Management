
#!/bin/bash

# ..................Script should be executed with sudo/root access...............

if [[ "${UID}" -ne 0 ]]
then
    echo "Please run with sudo or root"
    exit 1
fi

# ....................User should provide at least one argument...................

if [[ "${#}" -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [COMMENT]"
    echo "Create a user with name USER_NAME and comments field COMMENT"
    exit 1
fi

# ....................Store first argument as username.....................

USER_NAME="${1}"

# ...................Store remaining arguments as account comments..........

shift
COMMENT="${@}"

# ...................Check if user already exists....................

if id "$USER_NAME" &>/dev/null
then
    echo "User $USER_NAME already exists"
    exit 1
fi

# ....................Create a password................

PASSWORD=$(openssl rand -base64 12)

# ...................Create the user..............

if ! useradd -c "$COMMENT" -m "$USER_NAME"
then
    echo "The account could not be created"
    exit 1
fi

# ...................Set password for the user...........

if ! echo "$USER_NAME:$PASSWORD" | chpasswd
then
    echo "Password could not be set"
    exit 1
fi

# ..................Force password change on first login...............

passwd -e "$USER_NAME"

# ..................Display user details...............

echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Host: $(hostname)"

