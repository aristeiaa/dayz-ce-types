# Use this command to merge all types files together.
# Place it in your batch file before your server exe is called.

copy /V /A "Surrounds"\typesstart.xml + "Fractional Types"\*.xml + "Surrounds"\typesend.xml /b typesorted.xml
