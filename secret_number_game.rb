class SecretNumberGame
  
  attr_writer :secret_number

  def initialize
    @first_name = "Joe"
    @last_name = "Leo"
    @secret_number = 5
    @guesses = 3
  end

  def play
    greeting
    @guesses.times do |x|
      guesses_left = @guesses - x
      puts "\nYou have #{guesses_left} guesses left!"
      puts "Please make your first guess:"
      players_guess = $stdin.gets.chomp.to_i
      return if correct?(players_guess)
    end
    puts "You lost! :-( The number to guess was #{@secret_number}."
  end
    
  def greeting
    puts "Created by #{@first_name} #{@last_name}"
    puts "\nWhat is your name?"
    player_name = $stdin.gets.chomp
    puts "Hi, #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10"
  end

  def correct?(players_guess)
    if @secret_number == players_guess
      puts "You win! The number was #{@secret_number}."
      return true
    elsif @secret_number > players_guess
      puts "Make your next guess higher than #{players_guess}"
    elsif @secret_number < players_guess
      puts "Make your next guess lower than #{players_guess}"
    end
    false
  end
end
