#! /bin/bash
## This is a simple shell script for compositing a CDDA tileset 
## using the python compositing script from the cleverraven
## repository.

## Usage: Place this script and a copy of composite.py
##        into the directory of the tileset you wish to
##        compose and run it.
##        Output tileset will be in a folder named "output".

echo "Tile compositor shell script running."
echo "Making output directory"
mkdir output
echo "Copying tileset.txt to output."
cp tileset.txt ./output
echo "Copying fallback.png to output."
cp fallback.png ./output 
echo "Running compose.py"
python compose.py --use-all . ./output
echo "Compose script finished."
