def getInputFromPlayer(player)
  puts "Player " + player + " please enter both a row: "
  row = gets.chomp
  puts "Player " + player + " please enter both a column: "
  column = gets.chomp
  return Integer(row) -1 , Integer(column) - 1
  rescue
    return -1, -1
end

def isPlayerInputValid(row, column, currentMoves)
  if(row > 2 || row < 0) then return false end
  if(column > 2 || column < 0) then return false end
  if(currentMoves[row][column] != '-') then return false end
  return true
end

def changePlayer(currentPlayer)
  if(currentPlayer == "X") then return "O";
  end
  return "X"
end

def printBoard(currentMoves)
  system "clear"
  puts "***********"
  3.times { |i|
    one = currentMoves[i][0]
    two = currentMoves[i][1]
    three = currentMoves[i][2]
    spacer = " | ";
    puts " " + one + spacer + two + spacer + three
  }
  puts "***********"
end

def isThereAWinner(currentMoves)
  3.times { |i|
    
    one = currentMoves[i][0]
    two = currentMoves[i][1]
    three = currentMoves[i][2]
    if(one == two && two == three && one != '-') then return true end
    
    one = currentMoves[0][i]
    two = currentMoves[1][i]
    three = currentMoves[2][i]
    if(one == two && two == three && one != '-') then return true end
      
  }
  
  if(currentMoves[0][0] == currentMoves[1][1] && currentMoves[1][1] == currentMoves[2][2] && currentMoves[2][2] != '-') then return true end
  if(currentMoves[0][2] == currentMoves[1][1] && currentMoves[1][1] == currentMoves[2][0] && currentMoves[1][1] != '-') then return true end
 
  return false
end

currentMoves = [['-','-','-'],['-','-','-'],['-','-','-']]
printBoard(currentMoves)
currentPlayer = "X"
while !isThereAWinner(currentMoves)
  y = getInputFromPlayer(currentPlayer)
  while !isPlayerInputValid(Integer(y[0]), Integer(y[1]), currentMoves)
    puts "Invalid move!"
    y = getInputFromPlayer(currentPlayer)
  end
  currentMoves[Integer(y[0])][Integer(y[1])] = currentPlayer
  printBoard(currentMoves)
  currentPlayer = changePlayer(currentPlayer)
end

puts "Winner is: " + changePlayer(currentPlayer)