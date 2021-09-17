# rps_bonus.rb
VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
OUTCOMES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['spock', 'paper']
}

def prompt(msg)
  puts "=> #{msg}"
end

def win?(p1, p2)
  OUTCOMES[p1].include?(p2)
end

def display_results(choice, computer_choice)
  if win?(choice, computer_choice)
    prompt("You won!")
  elsif win?(computer_choice, choice)
    prompt("You lose.")
  else
    prompt("It's a tie.")
  end
end

def increment_score(p1, p2, p1_score, p2_score)
  if win?(p1, p2)
    p1_score += 1
  elsif win?(p2, p1)
    p2_score += 1
  end
  [p1_score, p2_score]
end

def display_score(p1_score, p2_score)
  prompt("Player: #{p1_score}\nComputer: #{p2_score}")
end

def display_grand_winner(p1_score, p2_score)
  if p1_score == 3
    prompt("You're the grand winner.")
  elsif p2_score == 3
    prompt("The computer is the grand winner.")
  else
    prompt("Nobody reached 3 points, so there is no grand winner.")
  end
end

def integer?(value)
  !!(!value.match(/[^0-9]/))
end

def valid_choice?(input)
  (integer?(input) && (1..5).include?(input.to_i)) ||
    VALID_CHOICES.include?(input.downcase)
end

def convert_choice(input)
  return VALID_CHOICES[input.to_i - 1] if integer?(input)
  input.downcase
end

choice_str = <<-MSG
  Choose one (enter 1-5 or the choice name):
  1) Rock
  2) Paper
  3) Scissors
  4) Spock
  5) Lizard
MSG

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt(choice_str)
    choice = gets.chomp

    break if valid_choice?(choice)
    prompt("That's not a valid choice.")
  end
  choice = convert_choice(choice)
  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}; Computer chose #{computer_choice}."

  display_results(choice, computer_choice)

  player_score, computer_score = increment_score(choice, computer_choice,
                                                 player_score, computer_score)

  display_score(player_score, computer_score)

  break if player_score == 3 || computer_score == 3
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.")
display_grand_winner(player_score, computer_score)
