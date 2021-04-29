

if [$# == 0];
then
    echo "Enter your activation code..."
fi

if [$# == 1];
then
    apt update
    apt upgrade
    wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
    apt install ./chrome-remote-desktop_current_amd64.deb
    apt install ubuntu-mate-desktop
    DISPLAY= /opt/google/chrome-remote-desktop/start-host --code=$1 --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=$(hostname)
fi

if [$# > 2];
then
    echo "too many args..."
fi