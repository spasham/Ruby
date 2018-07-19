from_file, to_file = ARGV


puts "copying data from #{from_file} to #{to_file}"

in_file = open(from_file)
in_data = in_file.read

puts "the lenght of the #{from_file} is #{in_data.length} bytes"


puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit ENTER to continue, CTRL-C to abort"

$stdin.gets

out_file = open(to_file, 'w')
out_file.write(in_data)

puts "Alright, we are done..!!"

out_file.close
in_file.close
