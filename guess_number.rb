##
# The guess numeber program gets you to choose the sides of a dice
# then guess the random number
#
# @author  Cameron Teed
# @version 1.0
# @since   2020-04-26
# frozen_string_literal: true

# Asks user for input
puts 'Please enter the range of your dice (1-?):'
# Gets the user input
side_amounts = gets.chomp

begin
  # Converts the input into a int
  side_amounts = side_amounts.to_i

  # Sets the counter to 0
  guess_counter = 0

  # checks if you inputted the correct number
  if side_amounts > 1
    # Gets random number
    random_int = rand(1..side_amounts)

    # Starts loop
    loop do
      # Asks for user input
      puts 'Please enter your guess for what number the dice landed on:'

      # stores user input and converts to int
      user_guess = gets.chomp
      user_guess = user_guess.to_i

      # Adds one to the counter
      guess_counter += 1

      # Checks if you guessed the correct number
      if user_guess == random_int

        # Prints out you got the correct number
        puts
        puts 'You guessed the number!'
        puts "it was #{random_int}!"
        puts "It took you #{guess_counter} guess(es)!"
        puts
        puts 'Done'
        # Ends loop
        break

      else
        # Prints try again if wrong number
        puts 'Guess again!'
      end
    end

  else
    # if these parameters are not met, ask them to meet them
    puts
    puts 'Please enter a number greater than 1'
  end
rescue StandardError
  # If the input cannot be converted into a float, tell the user that they need to input the correct numbers
  puts 'Please enter a valid input'
end
