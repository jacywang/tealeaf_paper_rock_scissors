def print_out_result(your_pick, computer_pick)
  reference = { 'P'=> 'Paper', 'R'=> 'Rock', 'S'=> 'Scissors'}

  if your_pick == computer_pick
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "It's a tie."
  elsif your_pick == 'P' && computer_pick == 'R'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Paper wraps rock. \n You win!"
  elsif your_pick == 'P' && computer_pick == 'S'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Scissors cut paper. \nComputer won!"
  elsif your_pick == 'R' && computer_pick == 'P'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Paper wraps rock. \nComputer won!"
  elsif your_pick == 'R' && computer_pick == 'S'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Rock destroys scissors. \nYou won!"
  elsif your_pick == 'S' && computer_pick == 'R'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Rock destroys scissors. \nComputer won!"
  elsif your_pick == 'S' && computer_pick == 'P'
    puts "You picked #{reference[your_pick]} and computer picked #{reference[computer_pick]}"
    puts "Scissors cut paper. \nYou won!"
  end
end

def play_again
  puts "Play again? (Y/N)"
  play_again = gets.chomp.upcase
  play_game if play_again == 'Y'
end

def play_game
  puts "Choose one: (P/R/S)"
  
  your_pick = gets.chomp.upcase
  while !(your_pick =~ /\A[PRS]\z/)
    puts "Choose one: (P/R/S)"
    your_pick = gets.chomp.upcase
  end

  computer_pick = ['P', 'R', 'S'].sample

  print_out_result(your_pick,computer_pick)

  play_again
end

puts "Play Paper Rock Scissors!"
play_game
