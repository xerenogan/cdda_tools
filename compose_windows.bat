@echo off

:: This is a simple shell script for compositing a CDDA tileset
:: using the python compositing script from the cleverraven
:: repository.

:: Usage: Place this script and a copy of composite.py
::        (compose.py located in cleverraven repo)
::        into the directory of the tileset you wish to
::        compose and run it.
::        Output tileset will be in a folder named "output".

echo "Tile compositor shell script running."
echo "Making output directory"
mkdir output
echo "Copying tileset.txt to output."
COPY  tileset.txt %CD%\output
echo "Copying fallback.png to output."
COPY  fallback.png %CD%\output
echo "Running compose.py"
python compose.py --use-all %CD% %CD%\output
echo "Compose script finished."
