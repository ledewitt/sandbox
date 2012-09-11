#puts 'Hello there, and what\'s your name?'
#name = gets.chomp
#puts 'Your name is ' + name + '? What a lovely name!'
#puts 'Pleased to meet you, ' + name + '. :)'

=begin
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
=end

=begin
letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
=end

=begin
line_width = 40
str = '--> text <--'
puts(str.ljust( line_width))
puts(str.center(line_width))
puts(str.rjust( line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
=end

=begin
puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is....?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp
  
  if reply.downcase == 'yes'
    puts 'Hmmph! Well, sit down!'
      else
        puts 'GET OUT!!'
      end
  end
=end

#=begin
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris' || name == 'Katy'
puts 'What a lovely name!'
end
#=end