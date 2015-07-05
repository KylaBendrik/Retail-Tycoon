require_relative 'lib/inventory'
require_relative 'lib/views'

inventory = Inventory.new

puts $greeting_text
inventory.print

loop do
  puts $prompt_text
  command = gets.chomp
  puts

  if command[0] == 'h'
    puts $help_text
  elsif command[0] == 'l'
    inventory.print
  elsif command[0] == 'u'
    puts inventory.list

    begin
      continue = false
      puts $update_prompt_text
      style_num = gets.chomp

      batch = inventory.lookup(style_num)

      puts
      puts "What price do you want the #{batch.style.to_s} to be?"
      puts "Cost to produce: #{batch.style.cost}"
      batch.style.price = gets.chomp

      puts
      puts "The #{batch.style.to_s} is now priced at #{batch.style.price}."
      puts $continue_update_prompt_text
      command = gets
      if command.chomp.upcase == 'Y' or command == "\n"
        continue = true
      elsif command.chomp[0] == 'l'
        puts
        puts inventory.list
        puts $continue_update_prompt_text_wout_list
        command = gets
        if command.chomp.upcase == 'Y' or command == "\n"
          continue = true
        end
      end
    end while continue
  elsif command[0] == 'i'
    puts $inspect_prompt
    style_num = gets.chomp

    batch = inventory.lookup(style_num)

    puts "#{batch.style.inspect_style}"
  end #end of command options
end #end of command-asking loop
