# Maintains game board state
class Board
  # initialize board
  def initialize
    # set up blank data structure
    @board = Array.new(12) { Array.new(4) }
    @guess_count = 0
    @valid_colors = ["red", "orange", "yellow", "green", "blue", "violet"]
  end

  # render
  def render
    puts
    # loop through data structure
    @board.each do |row|
      # display an existing peg if any, else blank
      row.each do |slot|
        slot.nil? ? print "-" : print slot
      end
      puts
    end
    puts
  end

  # set_code
  def set_code(code)
    # IF valid_code?
    if valid_code?(code)
      # set code
      @secret_code = code
      # ELSE
      puts "Your code doesn't follow the rules!"
    end
  end

  # secret_code
  def secret_code
    # If secret_code has been set, return the secret_code
    @secret_code ? @secret_code : false
  end

  # add_guess
  def add_guess(guess)
    # IF valid_code?
    if valid_code(guess)
      # place guess
      @board[guess_count] = guess
      #ELSE
    else
      # display error message
      puts "Your code doesn't follow the rules!"
    end
  end

  # valid_code?
  def valid_code?(code)
    # is each peg in the code a valid_color?
    code.each do |peg|
      return false unless peg.valid_color?
    end
  end

  # valid_color?
  def valid_color?(peg)
    # is the peg included in the list of valid_colors?
    valid_colors.include?(peg)
  end

  # close_pegs
  # number of pegs in the guess with correct color, but incorrect location

  # exact_pegs
  # number of pegs in the guess with correct color, and correct location

  # winning_combination?
  # does the last guess have 4 exact_pegs?

  # full?
  # does every row contain a guess?
end