stylize.rb
=======

Ruby ANCI-stylized terminal text output. Extends class String.
======

Example:
====

puts "[ ".blink + " hello world ".cyan.blink.bold.red_background + " ]".blink

Helper Methods:
====

black, red, green, yellow, blue, magenta, cyan, white
black_background, red_background, green_background, 
yellow_background, blue_background, magenta_background,
cyan_background, white_background, bold, underline, blink, 
swap_foreground_and_background, hide

To call directly:
====

Default terminal window settings 
 => "hello world".stylize

Red text 
 => "hello world".stylize([31])

Blinking Magenta text with a white background.
 => "hello world".stylize([35, 47, 5])

Codes
====

Foreground (I.E. text) Codes:    
 30	Black 
 31	Red 
 32	Green 
 33	Yellow 
 34	Blue 
 35	Magenta 
 36	Cyan 
 37	White 
 39	Default

Background Codes:
 40	Black 
 41	Red 
 42	Green 
 43	Yellow 
 44	Blue 
 45	Magenta 
 46	Cyan 
 47	White 
 49	Default  

Style Codes:
 0	Switch off all attributes.
 1	Bold mode.
 4	Underline mode.
 5	Blinking mode.
 7	Swap foreground and background colors.
 8	Hide text. I/E. the foreground and background are the same.

For a complete background on the codes used please see:
http://en.wikipedia.org/wiki/ANSI_escape_code

Notes
====

Originally created by Austen Conrad
http://ARConrad.com
Twitter: @AustenConrad | http://twitter.com/AustenConrad

Git:
http://github.com/AustenConrad/stylize

Copyright (C) 2012 Austen Conrad

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
