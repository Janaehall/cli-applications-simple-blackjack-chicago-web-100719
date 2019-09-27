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
  round = deal_card + deal_card
  display_card_total(round)
  round
end

def hit?(card_total)
  prompt_user
  ans = get_user_input
  valid_inputs  = ["s", "h"]
  until valid_inputs.include?(ans)
    invalid_command
    prompt_user
    ans = get_user_input
  end
  if ans == "h"
    card_total += deal_card
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner()
  welcome
  card_total = initial_round
  until card_total >= 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
