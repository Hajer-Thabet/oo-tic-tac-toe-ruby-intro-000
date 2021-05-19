class TicTacToe


  def initialize(board=nil)
    @board=Array.new(9," ")
  end
  WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
  ]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
  end
  def valid_move?( index)
  index.between?(0,8) && !position_taken?(location)
  end
  #turn_count
  def turn_count
  @board.count{|token| token=="X"||token=="O"}
  end
  def current_player
  turn_count % 2 == 0 ? "X" : "O"
  end



  #Takes a users num and the board, and places the X or O char in that position
  def move( index, current_player)
  @board[index] = current_player
  end

  def position_taken?( location)
  @board[location] != " " && @board[location] != ""
  end


  #turn
  def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(user_input)
    if valid_move?(index)

       move(0, "X")

       display_board
    else
      turn
    end
  end
  #won?


end





#Asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number
