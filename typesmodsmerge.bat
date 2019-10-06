# Use this command to merge all types and mods types files together.
# Place it in your batch file before your server exe is called.

copy /V /A "Surrounds"\typesstart.xml + "Fractional Types"\types*.xml + "Fractional Types"\mods*.xml + "Surrounds"\typesend.xml /b typesorted.xml
