
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def input_to_index(user_input)
  user_input.to_i - 1
 end

 def move(board, input_to_index(user_input), current_player = "X")
   board[position_selection] = current_player
 end

 def position_taken?(board, index)
   if board[index] != ("X") && board[index] != ("O")
     return false
   elsif board[index] == ("X") || board[index] == ("O")
     return true
   end
 end

 def valid_move?(board, index)
  if index.between?(0, 8) && !(position_taken?(board, index))
    return true
  else !index.between?(0, 8) || (position_taken?(board, index))
      return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  until input_to_index(user_input) == valid_move?(board, index)
  if input_to_index(user_input) == valid_move?(board, index)
    display_board(board)
    move(board, user_input, current_player = "X")
    end
  end
end
