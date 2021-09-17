# rps_walkthrough.rb

VALID_CHOICES = ['rock', 'paper', 'scissors']

def test_method
  prompt('test message')
end

# This call to test_method doesn't work because prompt has yet to be
# defined when this call is invoked.
# test_method

def prompt(msg)
  puts "=> #{msg}"
end

test_method

def win?(p1, p2)
  (p1 == 'rock' && p2 == 'scissors') ||
    (p1 == 'paper' && p2 == 'rock') ||
    (p1 == 'scissors' && p2 == 'paper')
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

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You choice: #{choice}; Computer chose #{computer_choice}."

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing.")
