# dayz-ce-types
A rework of the Central Economy Types.xml for DayZ SA servers

## Introduction
After becoming frustrated with trying to edit loot spawns in particular within the types.xml file I created some basic XSL to transform the types.xml file and sort it into like categories and then have split out these categories into seperate XML files which are much more manageable and easy to work with.

I then created a simple one line script to add to your 'server start.bat' file which combines the fractional XML files and merges them into one types.XML; so every time your server loads you can reassemble the types efficiently and bring in any edits you may have made.

NB: These are NOT the default loot amounts but I hope to bring in a more effective rework of the spawn rates in the CE in due course. In the course of this project I've found numerous, apparent errors, in the default loot setup. That's no slight to BIS - managing a system of this complexity is not trivial.

## Installation
* Download the latest source as zip (or better yet git it to your server).
* Make any modifications you would like to your spawn rates by modifying files within Fractional Types folder.
* Regenerate your typesorted.xml by running the typesmerge.bat file.
* Backup your existing types.xml in $DAYZSERVERROOT\mpmissions\dayzOffline.chernarusplus\db - rename to types.xml.bak.
* Drag in the typesorted.xml to the $DAYZSERVERROOT\mpmissions\dayzOffline.chernarusplus\db folder.
* Rename this files to types.xml.
* Stop the server.
* (At your own risk) Wipe the current economy by deleting the contents of $DAYZSERVERROOT\mpmissions\dayzOffline.chernarusplus\storage_1\data\.
* Start the server.

## Mods
If you have mods that include new types then you can make use of the Fractional Types files starting with 'mods-'.

* These will only be included if you run the typesmodsmerge.bat file.
* You can create as many mods- files as you like and use them types distinct from any vanilla types.
* Some examples have been included - these are not complete and you use them at your own risk.
