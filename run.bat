:: Minecraft server run script
:: Version 1.0
:: Source: github.com/duckysmacky/mc-server-run

:: Disables command output
@echo off
:: Make variables local
setlocal

:: ------------------------------------
:: Config
:: ------------------------------------

:: Name and location of the server's .jar file (required)
set serverJar=server.jar

:: Minimum allocated memory (1024M, 2G, etc.)
set minRam=1024M

:: Maximum allocated memory (1024M, 2G, etc.)
set maxRam=6144M

:: Confirm mod changes (don't warn about missing mods) (true/false)
::set confirmModChanges=true

:: Enable Playit.gg automatic startup (true/false)
::set enablePlayit=true

:: Set additional java parameters to be passed to the command (advanced)
::set javaParameters=""

:: ------------------------------------



:: ------------------------------------
:: Scipt execution (Don't change)
:: ------------------------------------
set javaCommand=java
set playitCommand=playit start

:: Min ram
if defined minRam (
    set javaCommand=%javaCommand% -Xms%minRam%
)

:: Max ram
if defined maxRam (
    set javaCommand=%javaCommand% -Xmx%maxRam%
)

:: Mod changes confirm
if defined maxRam if %confirmModChanges%==true (
    set javaCommand=%javaCommand% -Dfml.queryResult=confirm
)

:: Finalize
set javaCommand=%javaCommand% -jar %serverJar% nogui

start "Server Console" cmd /c "%javaCommand%"

if defined enablePlayit if %enablePlayit%==true (
    start "Playit.gg" cmd /c "%playitCommand%"
)

endlocal
