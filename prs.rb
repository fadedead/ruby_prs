input = true
game_array = ["Rock", "Paper", "Scissors"]
def comp_won_message
  puts "Computer won!!"
end
def user_won_message
  puts "You won!!"
end
def tie_message
  puts "It is a tie!!"
end

while input do
  puts "Play Rock Paper Scissors"
  puts "Choose one: (P/R/S)"
  choice=gets.chomp
  case choice 
  when "R"
    user_choice=0
  when "P"
    user_choice=1
  when "S"
    user_choice=2
  else
    puts "Invalid Choice. Please try again"
    next
  end
  comp_choice = rand(3)
  puts "You chose #{game_array[user_choice]} and the computer chose #{game_array[comp_choice]}"
  case user_choice
  when 0
    case comp_choice 
    when 0 #Rock
      tie_message
    when 1
      comp_won_message
    when 2
      user_won_message
    end
  when 1 #Paper
    case comp_choice 
    when 0
      user_won_message
    when 1
      tie_message
    when 2
      comp_won_message
    end
  when 2 #Scissors
    case comp_choice 
    when 0
      comp_won_message
    when 1
      user_won_message
    when 2
      tie_message
    end
  end
  puts "Would you like to continue (Y/N)"
  if (gets.chomp == "Y")
    input=true
  else
    input=false
  end
end

