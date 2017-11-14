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
end
