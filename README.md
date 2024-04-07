# utils-nm

This repository contains various scripts.

## But why?

Makes life easier.

## Installation

Add this directory to the `PATH` or copy the scripts into the `PATH`.

## Contents

### `alert`

`alert` is a timer that plays a sound at `$ALERT_SOUND` after a given amount of minutes. When the music is played, press `q` to quit.

**Dependencies**: POSIX shell, coreutils and mpv

**Usage**: `alert [minutes]`

### `appimgup`

`appimgup` is a shell script that attempts to update all Appimages located in `~/.local/bin`. Since this is based around an optional feature of Appimages, this will not work on all installed Appimages.

**Dependencies**: POSIX shell, coreutils, support for Appimages, appimageupdatetool

**Usage**: `appimgup`

### `batdate`

`batdate` prints the current time and battery state, and updates this in regular intervals. This script is best run in its own terminal window.

**Dependencies**: POSIX shell, coreutils, Linux (or another OS that has the `/sys` directory)

**Usage**: `batdate`, i.e. `xterm -geometry 20x3+4+4 -e batdate`

### `char`

`char` reads a number from stdin and prints the corresponding ASCII character to stdout.

**Dependencies**: Perl, Shakespeare Programming Language module of Perl

**Usage**: `echo [number] | char`

### `charcount`

`charcount` counts the frequency of each character in a file. Unlike `wc -c`, it will not print the number of characters in the entire file.

For example, the output for a file with the content "Hello, World!" may look like:

```
1	H
1	e
3	l
2	o
1	,
1	 
1	W
1	r
1	d
1	!
```

If no file is provided, `charcount` will read from stdin.

**Dependencies**: awk

**Usage**: `charcount [file]` or `cat [files ...] | charcount`

### `D`

`D` is a die with a variable but integer number of sides. If the number of sides are not provided, `D` will default to 6 sides.

**Dependencies**: Python

**Usage**: `D [sides]`

### `getip`

`getip` will print your IP address.

**Dependencies**: POSIX shell, coreutils, curl, `ip` command

**Usage**: `getip` or `getip -p` to retreive the public ip address.

### `gh-release-url`

`gh-release-url` will retreive the version of the latest release attached to a Github repository. This may be useful for shell scripts, or for usage within [fbi](https://github.com/nmke-de/fbi). Copied from [this gist](https://gist.github.com/gvenzl/1386755861fb42db492276d3864a378c), tailored to my needs.

**Dependencies**: POSIX shell, coreutils, awk, curl, grep, sed

**Usage**: `gh-release-url [username] [repository name]`, i.e. `gh-release-url nmke-de scalp`

### `git_update`

`git_update` is a shell script which will update (`git pull`) all local git repositories in a directory `~/.local/src`. This is practical to keep software built from source up to date, but a more advanced alternative is [fbi](https://github.com/nmke-de/fbi), which has more features and is also capable to automatically build and install software.

If your git repositories are located in a different directory, change the second line of this shell script to suit your needs.

**Dependencies**: POSIX shell, coreutils, git

**Usage**: `git_update`

### `grab`

`grab` finds all files matching an Extended Regular Expression pattern in the current working directory and its subdirectories.

**Dependencies**: POSIX shell, find, grep

**Usage**: `grab [Extended Regular Expression]`, i.e. `grab "\.(md|txt)$"`

### `line`

`line` prints specified lines from a text file. If no file is specified, `line` will read from stdin.

Lines can be specified by enumerating them like `2 4 5 6` or using ranges like `2 4-6`.

**Dependencies**: awk

**Usage**: `line [lines ...] from [filename]` or `cat [files ...] | line [lines ...]`

### `linecount`

`linecount` counts the frequency of each line in a file. Unlike `wc -l`, it will not print the number of lines in the entire file.

Take for example a file with the following content:

```
Hello
Hello
World!
```

The output of `linecount` may look like this:

```
2	Hello
1	World!
```

If no file is provided, `linecount` will read from stdin.

**Dependencies**: awk

**Usage**: `linecount [file]` or `cat [files ...] | linecount`

### `lineof`

`lineof` prints the line numbers of lines in a textfile which match a regular expression.

**Dependencies**: awk

**Usage**: `lineof [Regular Expression] file [filename]` or `cat [files ...] | lineof [Regular Expression]`

### `max`

`max` prints the maximum of the provided arguments, which are assumed to be numbers. If no arguments are provided, `max` will instead read tokens from stdin.

**Dependencies**: awk

**Usage**: `max [numbers ...]` or `echo [numbers ...] | max`

### `min`

`min` prints the minimum of the provided arguments, which are assumed to be numbers. If no arguments are provided, `min` will instead read tokens from stdin.

**Dependencies**: awk

**Usage**: `min [numbers ...]` or `echo [numbers ...] | min`

### `repeat`, `norm` and `statloc`

`repeat` will repeatedly execute the same provided command and print the frequency of the resulting outputs. This is more sensible in combination with a command like [`D`](#D) compared to a command with deterministic results.

`norm` will take the output of `repeat` and normalize it.

`statloc` will take the output from `repeat` or `norm` and report the statistical location of the data sample.

**Dependencies**: awk (for norm and statloc), bash, coreutils, [`linecount`](#linecount) (for repeat)

**Usage**: i.e. `repeat -t 1000 D 10 | norm | statloc`

### `ord`

`ord` reads a character from stdin and prints the corresponding ASCII code value as a decimal integer to stdout.

**Dependencies**: Perl, Shakespeare Programming Language module of Perl

**Usage**: `echo [character] | ord`

### `path`

`path` will print the content of the `PATH`. This may be useful in combination with something like `dmenu` or similar programs.

**Dependencies**: POSIX shell, coreutils, grep

**Usage**: `path`

### `pw3m`

`pw3m` is a utility wrapper around `w3m` which tries to emulate private/incognito mode.

**Dependencies**: POSIX shell, coreutils, `w3m`

**Usage**: `pw3m [url?]`

### `rupdate`

`rupdate` is a R script that updates all installed R packages.

**Dependencies**: R (the programming language)

**Usage**: `rupdate`

### `setwp`

Coming soon™

### `showf`

Coming soon™

### `sum.awk`

Coming soon™

### `tabs2comma`

`tabs2comma` converts tsv (tab separated values) files to quoted csv (comma separated values) files.

**Dependencies**: POSIX shell, awk, sed

**Usage**: `tabs2comma [tsvfile]`

### `typecount`

`typecount` counts the frequency of each word/token in a file. Unlike `wc -w`, it will not print the number of words in the entire file.

For example, the output for a file with the content "Hello, Hello, World!" may look like:

```
2	Hello,
1	World!
```

If no file is provided, `typecount` will read from stdin.

**Dependencies**: awk

**Usage**: `typecount [file]` or `cat [files ...] | typecount`

### `wttr-in`

Coming soon™

### `xkbswitch.sh`

Coming soon™
