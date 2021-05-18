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
  index.between?(0,8) && !position_taken?(index)
  end
  #turn_count
  def turn_count
  @board.count{|token| token=="X"||token=="O"}
  end
  def current_player
   i=0

  if @board[i]=="X"
    i+=1
    @board[i+1]="O"
  elsif @board[i]=="O"
    i+=1
    @board[i+1]="X"
  end
  end







end


#turn
