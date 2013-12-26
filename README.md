#Supaplex

![](https://github.com/saglam/supaplex/blob/master/Images/screenshot.png)
The beloved [Supaplex](http://en.wikipedia.org/wiki/Supaplex) game for your Mac OS X. See also http://www.elmerproductions.com/sp/ for more information on the original game.

### Installation

* Go to [releases](https://github.com/saglam/supaplex/releases) and download the latest dmg file
* Double click on the file you downloaded
* Drag the Supaplex app to your Applications folder
* Click on the Supaplex app to begin playing

### Contact

* [GitHub issue tracker](https://github.com/saglam/supaplex/issues)
* E-mail: mnsaglam@gmail.com

### License

DOSBox, our modifications to it, and all other source code and images included in this project are licensed under [GPLv2](http://www.gnu.org/licenses/gpl-2.0.html). 

### Building

First step is to install and build SDL, which is needed by DOSBox. Grab the latest 1.2.* source from http://www.libsdl.org and extract it to a separate directory.

    cd SDL
	./configure
    make
	make install

Once your SDL 1.2.* installation is complete, build the Supaplex codebase as follows.

    git clone git://github.com/saglam/supaplex.git
    cd supaplex
    ./configure
	make

### Acknowledgements

Supaplex survived until the date thanks to the amazing work of the [DOSBox](http://www.dosbox.com) team.
