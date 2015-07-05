require_relative 'lib/inventory'

inventory = Inventory.new

puts ""
puts "Welcome, entrepreneur! Below is a list of your starting inventory:"
puts ""
inventory.print

loop do
  puts ""
  puts "What do you want to do? (For list of commands, type '(h)elp')"
  command = gets.chomp
  puts ""

  if command[0] == 'h'
    puts "'(h)elp' lists avaliable commands"
    puts "'(i)nventory' lists everything in your store inventory"
    puts "'(u)pdate' lets you update inventory prices"
    puts "'(d)etails' allows you to see more details about a specific style"
  elsif command[0] == 'i'
    inventory.print
  elsif command[0] == 'u'
    puts inventory.list

    begin
      continue = false
      puts ""
      puts "Type the style number of the item for which you wish to update the pricing."
      style_num = gets.chomp

      batch = inventory.lookup(style_num)

      puts ""
      puts "What price do you want the #{batch.style.to_s} to be?"
      puts "Cost to produce: #{batch.style.cost}"
      batch.style.price = gets.chomp

      puts ""
      puts "The #{batch.style.to_s} is now priced at #{batch.style.price}."
      puts ""
      puts "Would you like to update another price? (Yn) (type 'list' to print inventory list)"
      command = gets
      if command.chomp.upcase == 'Y' or command == "\n"
        continue = true
      elsif command.chomp[0] == 'l'
        puts
        puts inventory.list
        puts "\nWould you like to update another price? (Yn)"
        command = gets
        if command.chomp.upcase == 'Y' or command == "\n"
          continue = true
        end
      end
    end while continue
  elsif command[0] == 'd'
    puts "Enter the style number of the item you wish to inspect"
    style_num = gets.chomp

    batch = inventory.lookup(style_num)

    puts "#{batch.style.inspect}"
  end #end of command options
end #end of command-asking loop
