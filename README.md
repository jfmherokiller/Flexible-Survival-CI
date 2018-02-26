# Flexible-Survival-CI
Flexible Survival With Continous Integration support

This is a working attempt at setting up a continuous integration plus a hosting method for testing.

It makes use of Travis ci for the compiling and deploying process. 
Heroku is used as the deployment endpoint because it supports files/projects which are greater than 100MB while GitHub Pages doesn't support that.

The current implementation of the scripts expect that the inform project is named Flexiblesurvival but this can be easily changed.

However, the scripts also expect that the submodule is setup like this repo https://github.com/jfmherokiller/Flexible-Survival .
Where all extensions are at the root, 
figures are in a figures folder in the root, 
and the story file itself is stored in a folder called Inform also located at the root.

To change these to work with other setups you will need to edit bootstrap.sh and build-code.sh

Special unusual edits are probably my edited i7 Perl script which forces the i6 compiler to compile in full debug mode.

It can be found at this gist https://gist.github.com/jfmherokiller/e52c873a476eb1fbc9e032512e91d3e7

#list of scripts

install-inform.sh - downloads and installs the latest version of inform7 if it doesn't already exist in the Travis ci cache.

bootstrap.sh - copies the needed files out of the submodule directory into their places.  
Such files include the story.ni file and the folder containing the "Figures".

build-code.sh - 
Short description: it compiles the code and prepares it for deploying to Heroku.
Long description: This file runs my modified i7 script to compile the code. 
It also prevents Travis ci from killing the process at the 68% mark which is where it likes to hang due to unknown reasons. 
It then copies the release folder into the root and copies the files that Heroku needs into it.

