# Prusa-firmware build environment

Create and use a Docker container to build Prusa i3 firmware.


# Usage
Note: On an ARM Mac, switch Docker to "Docker VMM" in Settings -> General -> Virtual Machine Options.

To create the Ubuntu-based Docker image, run
```
./docker-create-image.sh
```

This will create an image with name "prusa-fw-builder".

To build the firmware found in the Prusa-Firmware/ directory, run
```
./build.sh
```

It will create a temporary container based on the "prusa-fw-builder" image, and run "build-script.sh" inside the container.

To customize, check out the preferred branch on the Prusa-Firmware/ directory, and modify the build-scrip.sh to your needs.
