require_relative 'wallet'

class Player
  MIN_AGE = 21

  attr_accessor :name, :age, :wallet

  def initialize
    puts ''
    puts "What is your name?".green
    puts ''
    @name = gets.strip.upcase
    `say Yo what is up my homie #{@name}`
    puts ''
    puts "What is your age?".green
    puts ''
    @age = gets.to_i
    puts ''
    age_verification
    puts ''
    puts 'How much money do you want to lose?'.green
    puts ''
    amount = gets.to_i
    @wallet = Wallet.new(amount)
    puts ''
  end

  def age_verification
    if @age < MIN_AGE
      puts ''
      puts "GET OUT OF HERE!".red
      puts ''
      `say get yo ass out of here`
      exit
    end
  end
end
