# calculator_bonus.rb
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def integer?(num)
  !!(!num.match(/[^0-9]/))
end

def float?(num)
  !!num.match(/^[+-]?[0-9]*\.?[0-9]+$/)
end

def operation_to_message(op)
  case op
  when '1' then return 'Adding'
  when '2' then return 'Subtracting'
  when '3' then return 'Multiplying'
  when '4' then return 'Dividing'
  end
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('num1_prompt', LANGUAGE))
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(messages('num_error', LANGUAGE))
    end
  end

  number2 = ''
  loop do
    prompt(messages('num2_prompt', LANGUAGE))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(messages('num_error', LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
  when '1' then number1.to_i + number2.to_i
  when '2' then number1.to_i - number2.to_i
  when '3' then number1.to_i * number2.to_i
  when '4' then number1.to_i / number2.to_i
           else prompt("That isn't an available operation.")
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
