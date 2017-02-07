# Manages all player related functionality
class Player
  attr_accessor :name

  # initialize
  def initialize(name = "Mystery Player", board)
    @name = name
    @board = board
  end

  # get secret code
  def get_code
    # loop infinitely
    loop do
      # ask_for_code
      code = ask_for_code

      # IF validate_code_format is true
      if validate_code_format
        # IF code can be set on the board
        if @board.set_code(code)
          # break the loop
          break
        end
      end
    end
  end

  # ask for code to set secret code
  def ask_for_code
    # display message asking for code
    puts "#{@name}, please enter four colors to make a secret code."
    puts "You can choose from red, orange, yellow, green, blue and violet."
    puts "Please enter your code in the form color,color,color,color:"
    # pull code from command line
    gets.strip.split(",")
  end

  # get guess
  def get_guess
    # loop infinitely
    loop do
      # ask_for_guess
      guess = ask_for_guess

      # IF validate_code_format is true
      if validate_code_format
        # IF guess can be placed on board
        if @board.add_guess(guess)
          # break the loop
          break
        end
      end
    end
  end

  # ask_for_guess
  def ask_for_guess
    # display message asking for guess
    puts "#{@name}, please enter four colors to guess the secret code."
    puts "You can choose from red, orange, yellow, green, blue and violet."
    puts "Please enter your code in the form color,color,color,color:"
    # pull code from command line
    gets.strip.split(",")
  end

  # validate_code_format
    # UNLESS code is in the proper format
    # display error message
end