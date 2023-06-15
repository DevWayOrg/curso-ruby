ROCK = 0
PAPER = 1
SCISSORS = 2
QUIT = 'Q'

CONVERSION = {
  'R' => ROCK,
  'P' => PAPER,
  'S' => SCISSORS
}.freeze

NUMBER_CONVERSION = {
  ROCK => 'Rock',
  PAPER => 'Paper',
  SCISSORS => 'Scissors'
}.freeze

NUM_CHOICES = 3
loop do
  computer_choice = rand(3) # 0, 1, or 2

  puts "Let's play Rock, Paper, Scissors!"
  puts 'Enter your choice: (R)ock, (P)aper, (S)cissors, or (Q)uit'
  puts 'If you enter a wrong option, we will play Rock for you!'
  user_choice = gets.chomp
  break if user_choice == QUIT

  choice = CONVERSION[user_choice] || ROCK

  puts "You chose #{NUMBER_CONVERSION[choice]} and the computer chose #{NUMBER_CONVERSION[computer_choice]}"

  case computer_choice
  when ROCK
    puts 'You win!' if choice == PAPER
    puts 'You lose!' if choice == SCISSORS
    puts "It's a tie!" if choice == ROCK
  when PAPER
    puts 'You win!' if choice == SCISSORS
    puts 'You lose!' if choice == ROCK
    puts "It's a tie!" if choice == PAPER
  when SCISSORS
    puts 'You win!' if choice == ROCK
    puts 'You lose!' if choice == PAPER
    puts "It's a tie!" if choice == SCISSORS
  end
  puts '==================='
  puts "\n" * 10
end
