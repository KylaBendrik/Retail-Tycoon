$greeting_text = <<END

Welcome, entrepreneur! Below is a list of your starting inventory:

END

$prompt_text = <<END

What do you want to do? (for list of commands, type '(h)elp')
END

$help_text = <<END
'(h)elp' lists available commands
'(l)ist' lists everything in your store inventory
'(u)pdate' lets you update inventory prices
'(i)nspect' allows you to see more details about a specific style
END

$update_prompt_text = <<END

Type the style number of the item for which you wish to update the pricing.
END

$continue_update_prompt_text = <<END

Would you like to update another price? (Yn) (type 'list' to print inventory list)
END

$continue_update_prompt_text_wout_list = <<END

Would you like to update another price? (Yn)
END

$inspect_prompt = <<END
Enter the style number of the item you wish to inspect
END
