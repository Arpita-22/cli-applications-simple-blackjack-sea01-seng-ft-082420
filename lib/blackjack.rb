require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  number = rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
   new_card = deal_card
   current_card_total += new_card
   elsif input == 's'
    input
   else
     invalid_command
     prompt_user
     get_user_input
   end
   current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  until card_sum > 21 do
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
    end_game(card_sum)
end
    
