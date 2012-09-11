file = File.open("data/contacts.txt","w")

# The above code creates or overwrites the file contacts.txt in the data file
# The "w" parameter says the file is wrtie mode
# Other parameters -
#  "r" for a file you want to read from
#  "a" when you want to append to a file

file.puts"Bob:909-654-3210"
file.puts"Tom:888-987-6543"

file.close