# Minecraft server run script

This is a really simple script for starting a local Minecraft server. It includes customizations to configure server's ram, support for automatic [Playit](https://playit.gg/) launch and includes some other small optimizations.

It is very mininal and simply reduces the amount of clicks that needed to be done when trying to start the server, but at the same time provides customization of how the server should be ran.

I've been personally using the most basic version of this script to start my own servers for a couple of years now. And so I though that it could be useful to share it with the world, since many non-IT people are having troubles with starting their local servers and configuring the jar file execution. So my goal was to simplify the process so that everyone can easly configure their servers.

## Usage

1. Download the `run.bat` file
2. Place the file in the server's root (main) directory
3. Edit the script to configure server's jar and memory limits
4. Double click the `run.bat` file to start the server!

## Config

The config area is defined within the `---` seperated area of the script. The script already has recommended defaults set, but you can easly change the values to your needs.

Write the desired value after `=` without any spaces (e.g: `set property=value`). Revome the `::` to uncomment the line and make it active. Commented lines are not accounted for configuration.

List of configurable values:

- Path to server .jar file
- Minimum allocated memory
- Maximum allocated memory
- Togglable automatic Playit.gg startup
