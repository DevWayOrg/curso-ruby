ROCK = 0
PAPER = 1
SCISSORS = 2

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
computer_choice = rand(3) # 0, 1, or 2

puts "Let's play Rock, Paper, Scissors!"
puts 'Enter your choice: (R)ock, (P)aper, or (S)cissors'
puts 'If you enter a wrong option, we will play Rock for you!'
user_choice = gets.chomp
choice = CONVERSION[user_choice] || ROCK

puts "You chose #{NUMBER_CONVERSION[choice]} and the computer chose #{NUMBER_CONVERSION[computer_choice]}"

if choice == computer_choice
  puts "It's a tie!"
elsif choice == ROCK && computer_choice == SCISSORS
  puts 'You win!'
elsif choice == PAPER && computer_choice == ROCK
  puts 'You win!'
elsif choice == SCISSORS && computer_choice == PAPER
  puts 'You win!'
else
  puts 'You lose!'
end
