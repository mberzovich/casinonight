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
require 'pry'
require 'colorize'

class Casino
  def initialize
    puts ''
    puts 'Welcome to the ruby casino'
    @player = Player.new
    binding.pry

  end
end

class Player
  MIN_AGE = 21
  attr_accessor :name, :age, :wallet

  def initialize
    puts "What is your name?"
    @name = gets.strip
    puts "What is your age?"
    @age = gets.to_i
    age_verification
    puts 'How much money do you want to lose?'
    amount = gets.to_i
    @wallet = Wallet.new(amount)
  end

  def age_verification
    if @age < MIN_AGE
      puts "GET OUT OF HERE!"
      exit
    end
  end
end

Casino.new

#
#   def give_answer
#     answers = [
#       "It is certain",
#       "It is decidedly so",
#       "Without a doubt",
#       "Yes definitely",
#       "You may rely on it",
#       "As I see it, yes",
#       "Most likely",
#       "Outlook good",
#       "Yes",
#       "Signs point to yes",
#       "Reply hazy try again",
#       "Ask again later",
#       "Better not tell you now",
#       "Cannot predict now",
#       "Concentrate and ask again",
#       "Don't count on it",
#       "My reply is no",
#       "My sources say no",
#       "Outlook not so good",
#       "Very doubtful",
#     ]
#     puts ''
#     puts "--==*** #{answers.sample} ***==--"
#     puts ''
#     puts ''
#     puts ''
#   end
# # binding.pry
# #greeting
#
# #quesiton
#     def get_question
#       puts 'Ask a yes-or-no question:'
#       puts 'Type QUIT to exit'
#       puts ''
#       question = gets
#       return question
#     end
# # binding.pry
#   greeting
# #function
#   while true
#     if get_question.downcase.strip == 'quit'
#       puts 'See you next time.'
#       exit
#     end
#     give_answer
#   end
en
# require 'pry'
# require 'colorize'
#
#
#
# def greeting
#     (1..4).each do |i|
#       puts ''
#     end
#     puts '    *** Casino Nights! ***    '
#     puts '  * Lets Play a Litte Game *  '
#     puts '____________________________'
#     puts ''
#   end
#
# binging.pry
#
# def menu
#   puts "--- Contact List Menu ---"
#   puts "1) All Contacts"
#   puts "2) Create Contact"
#   puts "3) Exit"
#   user_input = gets.strip.downcase
# end
#
# greeting
