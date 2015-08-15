http://code.google.com/p/imageresize/

## Usage ##

```
python imageresize.py [OPTIONS] image.jpg [image2.jpg...]

where OPTIONS may include:
    -s SIZE     Max image dimension (either height or width).
                Default 1280.
    -f          Force. Always resave, even for images that are already small enough.
    -v          Verbose. List images and what is being done to them.
    -h          Show this help and exit.

    Image filenames may be specified using UNIX-like globbing, eg '*.jpg' or '[A-N][0-9]\+.jpg'

```

## Description ##

Shrinks specified images so that the largest dimension is SIZE. Images who's largest dimension is already smaller or equal to SIZE are not touched (unless -f is given.) Images may be any format that is handled by the Python Imaging Library (PIL).

Originals are moved to a subdirectory named 'orig'. If a file name already exists in the 'orig' directory (presumably from a previous invocation) then this original is left untouched and no backup is made.

The original intent of this script is to reduce the file size of photos from my digital camera, at the cost of introducing minor new compression artefacts in the image. Even images which are already of given resolution can be substantially reduced in file size, if a re-save is forced with -f. Typically for me, 500kb photos from my rubbish phone camera will reduce to 100kb, at 1280x1024, with no perceptible loss in quality. Your mileage may vary.


## Requirements ##

  * Python must be installed. Only tested on v2.5.
  * Python Imaging Library must be installed.
  * Only tested on Ubuntu 8.10, WinXP. Might work elsewhere.

## Known Problems ##

  * Needs an installation mechanism for end users (which provides an executable and means users do not need to install Python or PIL)
  * Would be nice to include shell integration for Windows (right click, resize images)
  * Add a flag to dry run, showing what would be done, but saving nothing
  * It would be nice to use 'optparse' or similar, instead of my own command line arg parsing function.
