def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
<<<<<<< HEAD
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
=======
  until valid_move?(board, index)
    turn(board)
  end
  move(board, index)
  display_board(board)
>>>>>>> 839cd16a43d93848d0bb51d95b83dfd0607ab356
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, char = 'X')
  board[index] = char  
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board[index]) 
end

def position_taken?(position)
  position != " " && position != "" && position != nil
end