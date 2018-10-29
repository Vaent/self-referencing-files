def call
  puts "$0 is the program being run"
  puts "$0 -> #{File.absolute_path($0)}"
  File.open($0) { |file| file.readlines.each { |line| puts "    " + line } }
  puts "~~~"
  puts "__FILE__ is the script currently being executed"
  puts "__FILE__ -> #{File.absolute_path(__FILE__)}"
  File.open(__FILE__) { |file| file.readlines.each { |line| puts "    " + line } }
end