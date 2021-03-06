def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  n1 = deal_card
  n2 = deal_card
  total = n1 + n2
  display_card_total(total)
  total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
    card_total
  elsif input == "s"
    card_total 
  else 
    invalid_command
    prompt_user
    input = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  input = hit?(total)
  if input == total
    input = hit?(total)
  end 
  
  if input != total
    total += deal_card
    display_card_total(total)
  end 
  
  if total > 21
    end_game(total)
  end 
  
  
  
end
    
