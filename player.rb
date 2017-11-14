<<<<<<< HEAD
require_relative 'wallet'

class Player
  MIN_AGE = 21

  attr_accessor :name, :age, :wallet

  def initialize
    puts ''
    puts "What is your name?"
    puts ''
    @name = gets.strip
    puts ''
    puts "What is your age?"
    puts ''
    @age = gets.to_i
    puts ''
    age_verification
    puts ''
    puts 'How much money do you want to lose?'
    puts ''
    amount = gets.to_i
    @wallet = Wallet.new(amount)
    puts ''
  end

  def age_verification
    if @age < MIN_AGE
      puts ''
      puts "GET OUT OF HERE!"
      exit
    end
  end
=======
class Player
  attr_accessor :name, :age, :wallet

  def initialize
    puts "What is your name?"
    @name = gets.strip
    puts "What is your age?"
    @age = gets.to_i
    # age_verification
    puts 'How much money do you want to lose?'
    amount = gets.to_i
    @wallet = Wallet.new(amount)
  end

  # def age_verification
  #   if @age < 21
  #     puts "GET OUT OF HERE!"
  #     exit
  #   end
  # end
>>>>>>> Updating slots
end
