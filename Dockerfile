FROM hypriot/rpi-alpine-scratch

COPY . /
CMD ["/testing-dirtycow.sh"]
