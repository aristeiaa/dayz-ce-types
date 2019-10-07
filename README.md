# dayz-ce-types
A rework of the Central Economy Types.xml for DayZ SA servers

## Introduction
After becoming frustrated with trying to edit loot spawns I wanted to make managing loot much more simple and accessible.

I've used XSL to help sort and categorise loot into files (see Fractional Types folder) so now you can seperately see lists like:

* Weapons (Ammo and Attachments in different lists).
* Clothing (by military and medical as well).
* Food.
* AI.
* Vehicles.

In total I've seperated the loot into 15 categories by default.

I then created a simple one line script to add to your 'server start.bat' file which combines the fractional XML files and merges them into one types.XML; so every time your server loads you can reassemble the types efficiently and bring in any edits you may have made.

NB: These are NOT the default loot amounts but I hope to bring in a more effective rework of the spawn rates in the CE in due course. In the course of this project I've found numerous, apparent errors, in the default loot setup. That's no slight to BIS - managing a system of this complexity is not trivial.

## Statistics

These are the distributions of different loot types for the standard (without mods) loot structure in these files. They are close to default in every category except for weapons at the current time.

### Categories
![Categories](https://raw.githubusercontent.com/aristeiaa/dayz-ce-types/master/Stats/standard-categories.png)

### Tiers
![Tiers](https://raw.githubusercontent.com/aristeiaa/dayz-ce-types/master/Stats/standard-tiers.png)

### Usage
![Usage](https://raw.githubusercontent.com/aristeiaa/dayz-ce-types/master/Stats/standard-usage.png)

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
