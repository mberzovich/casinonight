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

require_relative 'wallet'
require_relative 'high_low'
require_relative 'player'
require_relative 'slot'


require 'pry'
require 'colorize'

class Casino

  attr_accessor :player, :options

  def initialize
    puts '******************************'.blue.on_light_blue
    puts '    *** Casino Nights! ***    '.red.on_light_blue
    puts '  * Lets Play a Litte Game *  '.green.on_light_blue
    puts '******************************'.blue.on_light_blue
    puts ''.on_light_blue
    `say Welcome to Casino Nights! Lets play a little game`
    @player = Player.new
    menu
  end

  def menu
    puts 'What game would you like to play?'.red
    puts ''
    @options = ["High / Low","Slots", "Exit"]
    @options.each_with_index { |opt, i| puts "#{i + 1}) #{opt}" }
    puts ''
    choice = gets.to_i - 1
    case choice
      when 0
        HighLow.new(@player)
      when 1
        Slot.new(@player, self)
        menu
      when 2
        puts ''
        puts "  ***  Come again!  ***  ".red
        puts ''
        `say thank you come again`
        exit
      else
        puts "Invalid Choice"
        menu
    end
    menu
  end
end

Casino.new
