## About ##

This is a set of tools that read Windows registry export files created by Microsoft RegEdit and convert to others format.

At the heart of the tools there is [a parser for RegEdit files](http://registry-files-tools.googlecode.com/svn/trunk/msreg.par) implemented in JavaScript using [the JS/CC parser generator](http://jscc.jmksf.com/).

The tools are implemented in JavaScript in the Windows Script Host (WSH) environment and will be available to users through entries in the Explorer context menu for .reg files.

## Status ##

Parser is ready. Tools and installation package are still in developement.

## How to create .reg files ##
  * From Microsoft RegEdit: use menu File/Export...
  * From the command line: `reg save <key> <file>`

## License ##
License is GPL v3. Other licenses available on request.

[![](http://www.gnu.org/graphics/gplv3-88x31.png)](http://www.gnu.org/licenses/gpl-3.0.html)