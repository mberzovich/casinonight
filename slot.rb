require_relative 'player'
require_relative 'wallet'



class Slot
  attr_accessor :player, :casino




  def initialize(player, casino)
    @player = player
    @casino = casino

    puts "Welcome to slots: #{player.name}"
    menu
  end

  def menu
    puts "1) Place bet and spin"
    puts "2) Return to casino"
    choice = gets.to_i
    if choice == 1
      spin
    elsif choice != 2
      puts "Invalid Input"
      menu
    else
    end

  end

def spin
  @arr = ["Ghost",
    "Seven",
    "Witch",
    "Pumpkin",
    "Spider",
    "Cat",
    "Candy",
    "Vampire"]
    puts "Place bet (Current wallet amount is: $#{@player.wallet.amount})"
    bet = gets.strip.to_f
    if bet > @player.wallet.amount
      puts "NOT ENOUGH $$ YOU CHEAP BASTARD!"
      menu
    else
    end  
@arr_results = @arr.sample(3)
  puts @arr_results
  first_item = @arr_results[0]
  winning = true

  @arr_results.each do |item|
    if item != first_item
      winning = false
    end
  end

  if winning
    puts 'YOU WIN'
    player.wallet.add(bet + bet)
  else
    puts 'YOU LOSE'
    player.wallet.subtract(bet)
  end
  puts "(Current wallet amount is: $#{player.wallet.amount})"
  menu
  end

end
