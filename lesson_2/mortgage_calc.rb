# mortgage_calc.rb

# Input:
#  - Loan amount
#  - Annual Percentage Rate (APR)
#  - loan duration

# Output:
#  - Monthly interest rate
#  - Loan duration in months
#  - Monthly payment

# ====== Helper methods =========
def title_card
  <<-TITLE
  +---------------------+
  | Mortgage Calculator |
  +---------------------+
  TITLE
end

def prompt(msg)
  puts "=> #{msg}"
end

def print_info(loan_amt, interest, m_duration)
  puts "Loan amount: $%.2f" % [loan_amt.to_f]
  puts "        APR: %.2f%%" % [interest.to_f * 100]
  puts "   Duration: #{m_duration} months"
end

def calculate_monthly_payments(loan_amt, m_interest, m_duration)
  loan_amt * (m_interest / (1 - (1 + m_interest)**(-m_duration)))
end

# This method will make sure the APR amount is a believable amount
# i.e. If the user enters 5, it will be converted to 5% (500% APR wouldn't
# really make any sense)
def convert_apr(apr)
  return apr.to_f / 100 if apr.to_f > 1
  apr.to_f
end

def integer?(num)
  !!(!num.match(/[^0-9]/))
end

def float?(num)
  !!num.match(/^[+-]?[0-9]*\.?[0-9]+$/)
end

def valid_amt?(input)
  integer?(input) || float?(input)
end

def valid_again?(input)
  ['Y', 'YES', 'N', 'NO'].include?(input.upcase)
end

# ====== Main program ===========

# Title card for the program
puts title_card

# Outer loop for re-running the program
again = 'yes'
while again.upcase == "Y" || again.upcase == "YES"
  # Ask for the loan amount
  loan_amount = 0
  loop do
    prompt("Enter an amount to loan: ")
    loan_amount = gets.chomp
    break if valid_amt?(loan_amount) && loan_amount.to_f > 0
    prompt("That isn't a valid amount to loan.")
  end

  # Ask for the APR
  apr = 0
  loop do
    prompt("Enter the annual percentage rate (APR): ")
    apr = gets.chomp
    break if float?(apr) && apr.to_f > 0
    prompt("That isn't a valid APR value.")
  end
  apr = convert_apr(apr)

  # Get the loan duration
  duration = 0
  loop do
    prompt("Enter the loan duration (in months): ")
    duration = gets.chomp
    break if integer?(duration) && duration.to_i > 0
    prompt("That isn't a valid span of time.")
  end

  print_info(loan_amount, apr, duration)

  # Calculate the monthly payment
  mpr = apr / 12
  m_payments = calculate_monthly_payments(loan_amount.to_f, mpr, duration.to_i)
  puts "You'll pay $%.2f a month" % [m_payments]

  # Prompt to run again
  loop do
    prompt("Would you like to run another calculation? (Y/N): ")
    again = gets.chomp
    break if valid_again?(again)
    prompt("Your answer needs to be yes or no (or y/n).")
  end
end
