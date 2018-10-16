def welcome
  puts "Welcome to the Blackjack Table" 
  # code #welcome here
end

def deal_card
 return rand(1..11)
   
   # code #deal_card here
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  answer = gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total) 
  return total
end

def hit?(total)
  prompt_user
  x = get_user_input 
 if x == "s" 
   total
  elsif x == "h" 
  total = total + deal_card
   total
  else 
    invalid_command
end
end



def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  card_total = hit?(card_total)
  display_card_total(card_total)
end
  end_game(card_total)
end
    
