# Start from Universal Blue's clean Fedora base
FROM ghcr.io/ublue-os/base-main:latest

# Tell the system to install Niri and your essentials
RUN rpm-ostree install \
    niri \
    waybar \
    fuzzel \
    alacritty \
    xorg-x11-server-Xwayland \
    pipewire \
    wireplumber \
    lxqt-policykit \
    swaybg \
    fastfetch \
    cava

# BAKE THE CONFIG DIRECTLY INTO THE OS BEFORE BOOTING
COPY config/files/ /

# Finalize the container state cleanly
RUN ostree container commit
