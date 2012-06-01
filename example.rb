require './stylize.rb'

[nil, "Bold Mode", nil, nil, "Underline Mode", "Blinking Mode", nil, "Swap foreground and background colors", "Hidden Text"].each_with_index do |description, index|

	unless description.nil?
		puts '================================================================'

		puts "[#{description} code, foreground color code, background color code]"

		30.upto(37) do |foreground|
			40.upto(47) do |background|
				print "[#{index},#{foreground},#{background}]".stylize([index, foreground, background])
			end

			puts "\033[0m"
		end
	end  
end

puts '================================================================'
puts 'Chaining examples:'
print " hello world ".bold.blink
print " "
print " hello world ".red.white_background
print " "
print " hello world ".blue.white_background.underline
print " "
print " hello world ".blink.underline.red.yellow_background.bold
print " "
print " hello world ".blink.underline.red.yellow_background.bold.swap_foreground_and_background
print "\n"
