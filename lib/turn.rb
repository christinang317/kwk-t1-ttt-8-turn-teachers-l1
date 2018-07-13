def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(index)
  new_index = index.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    false
  end
end

def valid_move?(board, index)
  if (board[index] == "X" || board[index] == "O")
    false
  elsif (index.to_i >= 0 && index.to_i <= 8)
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
 puts "Please enter 1-9:"
  input = gets
  input = input_to_index(input)
  while !valid_move?(board, input)
    puts "Please enter 1-9:"
    input = gets
    input = input_to_index(input)
  end
  move(board, input)
  display_board(board)
end
