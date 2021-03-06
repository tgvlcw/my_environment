vim-opengrok: opengrok interface for vim
========================================

Inspired by [youngker/eopengrok.el](https://github.com/youngker/eopengrok.el)

![vim-opengrok screenshot](https://raw.github.com/asenac/vim-opengrok/master/og-mode.gif)

Installation
------------

    Plugin 'asenac/vim-opengrok'

Requeriments
------------

- Java 1.7

- Exuberant ctags
  [http://ctags.sourceforge.net](http://ctags.sourceforge.net)

- Opengrok
  [https://github.com/OpenGrok/OpenGrok/releases](https://github.com/OpenGrok/OpenGrok/releases)

Note: vim-opengrok uses opengrok's command line tools but it does not require to
have opengrok's web application deployed.

Configuration
-------------

Add the following lines to your vimrc using the appropriate routes:

    let g:opengrok_jar = '/path/to/opengrok/lib/opengrok.jar'
    let g:opengrok_ctags = '/path/to/ctags'

vim-opengrok can use either a per-project index, created in a directory called
.opengrok within the root directory of the project by using :OgIndex
command, or an external index by defining g:opengrok\_config\_file variable
pointing to the configuration.xml file. For example, for using the same index
for both opengrok's web application and vim-opengrok, you might want to add the
following to your vimrc file:

    let g:opengrok_config_file = '/var/opengrok/etc/configuration.xml'

Note: vim-opengrok will fallback on g:opengrok\_config\_file variable if no
index directory is found in the directory tree of the current working directory.

Commands
--------

    :OgIndex /path/to/index

Creates an index for the directory specified.

    :OgReIndex

Updates the index that contains the current directory.

    :OgSearch [f|d|r|p]

Searches in the index and displays the results in Vim's location list. A prompt
is displayed to introduce the text to search. Supported queries:

- d - Symbol Definitions
- r - Symbol References
- p - Path
- f - Full text


    :OgSearchCWord

Searches word under the cursor and displays the results in Vim's location list.

    :OgMode

Interactive queries displaying the results in a special buffer (see screenhost
above).

Limitations
-----------

Currently vim-opengrok displays only the first chunk of results returned by opengrok. 
