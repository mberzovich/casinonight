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
    age_verification
    puts ''
    puts 'How much money do you want to lose?'
    puts ''
    amount = gets.to_f
    @wallet = Wallet.new(amount)
  end

  def age_verification
    if @age < MIN_AGE
      `say GET OUT OF HERE!`
      exit
    end
  end

end