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

<<<<<<< HEAD
=======

require_relative 'wallet'
require_relative 'high_low'
require_relative 'player'
require_relative 'slot'
>>>>>>> Updating slots
require 'pry'
require_relative 'player'
require_relative 'high_low'

class Casino
<<<<<<< HEAD
  attr_accessor :player, :options
=======

  attr_accessor :player
>>>>>>> Updating slots

  def initialize
    puts 'This should initialize'
    puts ''
    puts '    *** Casino Nights! ***    '
    puts '  * Lets Play a Litte Game *  '
    puts '____________________________'
    puts ''
    @player = Player.new
<<<<<<< HEAD
    puts 'What game would you like to play?'
    @options = ["High / Low", "Exit"]
    puts ''
=======
    @options = ["High / Low","Slots", "Exit"]
>>>>>>> Updating slots
    menu
  end

  def menu
<<<<<<< HEAD
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}" }
    choice = gets.to_i - 1
    case choice
      when 0
        HighLow.new(@player)
      when 1
        puts ''
        puts "  ***  Come again!  ***  "
        puts ''
        exit
      else
        puts "Invalid Choice"
=======
    puts 'What would you like to play? '
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}"}
    choice = gets.to_i - 1
    case choice
      when 0
        puts "Which game would you like to play? "

      when 1
        Slot.new(@player, self)
        menu 
      when 2

        puts "Come Again!"
        exit

      else
        puts "Invalid Choice"
        menu
>>>>>>> Updating slots
    end
    menu
  end
  # menu
end

Casino.new
