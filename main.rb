require_relative 'lib/inventory'

puts "Display inventory? (Yn)"
command = gets

if command.chomp == 'Y' or command == "\n"
  puts $inventory
end
