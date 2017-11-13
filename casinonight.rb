# Basic Objectives:
#
# Start game player has a name and an initial bankroll
# Player can go to different games via menu
# Slots
# High / Low
# Player places bet and wins / loses (hint: rand)
# Player's bankroll goes up and down with wins and losses
# Bonus Objectives:
#
# Ability to move to and from games
# Find a gem that allows you to play sound and find casino sounds that will play on each game change/events
# Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use
# The player should have a Wallet and the Wallet should be its own class with remove and add methods (OOP)
# Find ASCII Art and put it into your games/menus to make it more fun for the end user
# Ability to switch players (player menu, bankroll information)
# Player's bankroll persists while moving from game to game
# Player's bankroll persists if you switch to different players
# Random events occur when changing games that can increase or decrease player's bankroll
# Roulette
# Craps
# Build a card deck (hint: this is in today's lesson content)
# Card games (Blackjack, Poker, Casino War, etc...)
# Any other Casino game you can think of
# Create your own game

require_relative 'player'
require_relative 'wallet'
require_relative 'high_low'
require 'pry'
require 'colorize'

class Casino
  @options = ["High / Low", "Exit"]

  attr_accessor :player, :options

  def initialize
<<<<<<< HEAD
    puts ''
    puts '    *** Casino Nights! ***    '
    puts '  * Lets Play a Litte Game *  '
    puts '____________________________'
    puts ''
=======
    puts 'Welcome to the ruby casino!'
>>>>>>> casino fix - not complete
    @player = Player.new
    @option = ["High / Low", "Exit"]
    menu
  end
end

  def menu
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}" }
    choice = gets.to_i - 1
    case choice
      when 0
        HighLow.new(@player)
      when 1
        puts "Come Again!"
        exit
      else puts "Invalid Choice"
<<<<<<< HEAD
        menu
    end
    menu
    end
end

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
  end

  def age_verification
    if @age < MIN_AGE
      puts "GET OUT OF HERE!"
      exit
=======
>>>>>>> casino fix - not complete
    end
    menu
  end        
end

<<<<<<< HEAD
Casino.new
=======
Casino.new
>>>>>>> casino fix - not complete
