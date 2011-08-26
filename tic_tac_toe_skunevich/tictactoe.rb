def getInputFromPlayer
  puts "row followed by row number: ie. r1 is row 1"
  puts "column followed by a column number: ie c2 is column 2"
  puts "a valid entry is c1r1"
  puts "please enter both a row and column at the same time"
  x = gets.chomp
  column = -1
  row = -1
  if x[0, 1] == 'c' then column =  Integer(x[1, 1]) - 1 end
  if x[0, 1] == 'r' then row =  Integer(x[1, 1]) - 1 end

  if x[2, 1] == 'c' then column =  Integer(x[3, 1])  - 1 end
  if x[2, 1] == 'r' then row =  Integer(x[3, 1]) - 1 end
  
  return row, column
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
  }
  3.times { |i|
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
y = getInputFromPlayer()
currentMoves[Integer(y[0])][Integer(y[1])] = currentPlayer
printBoard(currentMoves)
currentPlayer = changePlayer(currentPlayer)
end

puts "Winner is: " + changePlayer(currentPlayer)






