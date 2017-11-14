require_relative 'player'
require_relative 'wallet'



class Slot
  attr_accessor :player, :casino




  def initialize(player, casino)
    @player = player
    @casino = casino

    puts ''
    puts "Welcome to slots: #{player.name}".yellow
    menu
  end

  def menu
    puts ''
    puts "1) Place bet and spin"
    puts "2) Return to Casino"
    puts ''
    choice = gets.to_i
    if choice == 1
      spin
    elsif choice != 2
      puts ''
      puts "Invalid Input"
      puts ''
      menu
    else
    end

  end

def spin
  @arr = ["Ghost","Seven","Witch","Pumpkin","Spider","Cat","Candy","Vampire"]
    puts ''
    puts "Place bet (Current wallet amount is: $#{@player.wallet.amount})"
    puts ''
    bet = gets.strip.to_f
    if bet > @player.wallet.amount
      puts ''
      puts "NOT ENOUGH $$ YOU CHEAP BASTARD!".red
      puts ''
      menu
    else
    end
@arr_results = @arr.sample(3)
  print @arr_results
  first_item = @arr_results[0]
  winning = true

  @arr_results.each do |item|
    if item != first_item
      winning = false
    end
  end

  if winning
    puts ''
    puts 'YOU WIN'.on_light_blue
    puts ''
    player.wallet.add(bet + bet)
    `say wahoo wahoo`
  else
    puts ''
    puts 'YOU LOSE'.on_light_blue
    puts "***_\u{1f4a9}_***".on_light_blue
    puts ''
    player.wallet.subtract(bet)
    `say you are not very good at this`
  end
  puts "(Current wallet amount is: $#{player.wallet.amount})".red
  menu
  end

end
