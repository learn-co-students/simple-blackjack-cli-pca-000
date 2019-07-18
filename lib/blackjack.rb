def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp.strip
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(num)
  total = num
  prompt_user
  input = get_user_input
  while input != "s" && input != "h"
    invalid_command
    prompt_user
    input = get_user_input
  end
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  end
end

def invalid_command
  puts "Please enter a valid command."
end

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
