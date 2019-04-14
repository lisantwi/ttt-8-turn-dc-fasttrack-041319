def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return FALSE
    elsif (board[index] == "X" || board[index] == "O" )
    return true 
  end
end 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
  return input
end

def move(board, input, character = "X")
  input = input_to_index(input)
  board[input] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input.to.i 
  if input >= 1 && input =< 9
    input = input - 1 
  elsif while !(input > 1 && input < 9)
    turn(board)
  end
end
   
  
  
    
  
end
