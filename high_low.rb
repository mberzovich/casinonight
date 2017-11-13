class HighLow
  attr_accessor :player

  def initialize(player)
    @player = player
    puts "Welcome to High Low: #{player.name}"
    menu
  end

  def menu
    puts "1) Place Bet"
    puts "2) Return to Casino"
    choice = gets.to_i
    if choice == 1
      place_bet
    end
  end

  def place_bet
    puts "How much do you want to bet? ($#{@player.wallet.amount})"
    amount = gets.to_f
    #TODO Flip cards
  end
end

# player = Player.new
# HighLow.new(player)
