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
    polkit-gnome \
    swaybg \
    && rpm-ostree cleanup -a

# Clean up and finalize 
RUN ostree container commit
