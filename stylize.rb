class String

  # Create styled terminal output. Expects an array of codes as input.
  # 
  # Default terminal window settings 
  #   => "hello world".stylize
  #   
  # Red text 
  #   => "hello world".stylize([31])
  #   
  # Blinking (5) Magenta text (35) with a white background (47).
  #   => "hello world".stylize([5, 35, 47])
  # 
  # Foreground (I.E. text) Codes:    
  #   30	Black 
  #   31	Red 
  #   32	Green 
  #   33	Yellow 
  #   34	Blue 
  #   35	Magenta 
  #   36	Cyan 
  #   37	White 
  #   39	Default
  #   
  # Background Codes:
  #   40	Black 
  #   41	Red 
  #   42	Green 
  #   43	Yellow 
  #   44	Blue 
  #   45	Magenta 
  #   46	Cyan 
  #   47	White 
  #   49	Default  
  #   
  # Style Codes:
  #   0	Switch off all attributes.
  #   1	Bold mode.
  #   4	Underline mode.
  #   5	Blinking mode.
  #   7	Swap foreground and background colors.
  #   8	Hide text. I/E. the foreground and background are the same.
  #
  # For a complete background on the codes used please see:
  # http://en.wikipedia.org/wiki/ANSI_escape_code
  # 
  # Originally created by Austen Conrad
  # http://ARConrad.com
  # Twitter: @AustenConrad | http://twitter.com/AustenConrad
  # 
  # Git:
  # http://github.com/AustenConrad/stylize
  # 
  # 
  #  Copyright (C) 2012 Austen Conrad
  #
  #    This program is free software: you can redistribute it and/or modify
  #    it under the terms of the GNU General Public License as published by
  #    the Free Software Foundation, either version 3 of the License, or
  #    (at your option) any later version.
  #
  #    This program is distributed in the hope that it will be useful,
  #    but WITHOUT ANY WARRANTY; without even the implied warranty of
  #    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  #    GNU General Public License for more details.
  #
  #    You should have received a copy of the GNU General Public License
  #    along with this program.  If not, see <http://www.gnu.org/licenses/>.

  def stylize(options = [])
    
    # Initialize string to add format settings to.
    style_string = ""
    
    # Add the sub-string to the 'style_string' for each format code received.  
    options.each do |option|
      style_string << "\e[#{option.to_i}m" if [0,1,4,5,7,8,30,31,32,33,34,35,36,37,39,40,41,42,43,44,45,46,47,49].include? option.to_i
    end unless options.empty?
      

    # Append the text of the string we're operating on as well as style code '0'
    # so that text following the stylized string does not get stylized.
    style_string << "#{self}\e[0m"
    
    # Return the assembled style string.
    return style_string
    
  end
 
  # Stylize method helpers.
  #
  # The helpers can be chained:
  #  => puts "hello world".blink.underline.red.yellow_background.bold
  #  => puts "hello world".blink.underline.red.yellow_background.bold.swap_foreground_and_background
  
  # Stylize method helper. Changes outputted string text color to black.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def black;    self.stylize([30]); end
  # Stylize method helper. Changes outputted string text color to red.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def red;      self.stylize([31]); end
  # Stylize method helper. Changes outputted string text color to green.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def green;    self.stylize([32]); end
  # Stylize method helper. Changes outputted string text color to yellow.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def yellow;   self.stylize([33]); end
  # Stylize method helper. Changes outputted string text color to blue.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def blue;     self.stylize([34]); end
  # Stylize method helper. Changes outputted string text color to magenta.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def magenta;  self.stylize([35]); end
  # Stylize method helper. Changes outputted string text color to cyan.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def cyan;     self.stylize([36]); end
  # Stylize method helper. Changes outputted string text color to white.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def white;    self.stylize([37]); end
  
  # Stylize method helper. Changes outputted string background color to black.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def black_background;   self.stylize([40]); end
  # Stylize method helper. Changes outputted string background color to red.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def red_background;     self.stylize([41]); end
  # Stylize method helper. Changes outputted string background color to green.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def green_background;   self.stylize([42]); end
  # Stylize method helper. Changes outputted string background color to yellow.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def yellow_background;  self.stylize([43]); end
  # Stylize method helper. Changes outputted string background color to blue.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def blue_background;    self.stylize([44]); end
  # Stylize method helper. Changes outputted string background color to magenta.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def magenta_background; self.stylize([45]); end
  # Stylize method helper. Changes outputted string background color to cyan.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def cyan_background;    self.stylize([46]); end
  # Stylize method helper. Changes outputted string background color to white.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def white_background;   self.stylize([47]); end
  
  # Stylize method helper. Makes the outputted string's colors bolder.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def bold; self.stylize([1]); end
  # Stylize method helper. Underlines the outputted string.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def underline; self.stylize([4]); end
  # Stylize method helper. Makes the outputted string blink.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def blink; self.stylize([5]); end
  # Stylize method helper. Swaps the outputted string's text and background colors.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def swap_foreground_and_background; self.stylize([7]); end
  # Stylize method helper. Hides the outputted text.
  #
  # The helpers can be chained:
  # => puts "hello world".blink.underline.red.yellow_background.bold
  def hide; self.stylize([8]); end

end