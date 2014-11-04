def paper_rock_scissors
  puts "Choose one: (P/R/S)"
  your_pick = gets.chomp.upcase
  while !(your_pick =~ /\A[PRS]\z/)
    puts "Choose one: (P/R/S)"
    your_pick = gets.chomp.upcase
  end

  computer_pick = ['P', 'R', 'S'].sample
  
  if your_pick == 'P'
    if computer_pick == 'P'
      puts "You picked Paper and computer picked Paper."
      puts "It's a tie."
      play_again
    elsif computer_pick == 'R'
      puts "You picked Paper and computer picked Rock."
      puts "Paper wraps Rock!"
      puts "You won!"
      play_again
    else 
      puts "You picked Paper and computer picked Scissors."
      puts "Scissors cut paper!"
      puts "Computer won!"
      play_again
    end
  elsif your_pick == 'R'
    if computer_pick == 'R'
      puts "You picked Rock and computer picked Rock."
      puts "It's a tie."
      play_again
    elsif computer_pick == 'P'
      puts "You picked Rock and computer picked Paper."
      puts "Paper wraps Rock!"
      puts "Computer won!"
      play_again
    else 
      puts "You picked Rock and computer picked Scissors."
      puts "Rock destroys Scissors!"
      puts "You won!"
      play_again
    end
  else 
    if computer_pick == 'S'
      puts "You picked Scissors and computer picked Scissors."
      puts "It's a tie."
      play_again
    elsif computer_pick == 'P'
      puts "You picked Scissors and computer picked Paper."
      puts "Scissors cut paper!"
      puts "You won!"
      play_again
    else 
      puts "You picked Scissors and computer picked Rock."
      puts "Rock destroys Scissors!"
      puts "Computer won!"
      play_again
    end
  end
end

def play_again
  puts "Play again? (Y/N)"
  play_again = gets.chomp.upcase
  paper_rock_scissors if play_again == 'Y'
end

puts "Play Paper Rock Scissors!"
paper_rock_scissors
