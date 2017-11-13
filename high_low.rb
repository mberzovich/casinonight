require_relative 'carddeck'
require_relative 'cardclass'

class HighLow

  def initialize(player)
    @player = player
    @d = Deck.new
    @d.cards.shuffle
    @player_hand = []
    puts "Welcome to High Low: #{player.name}"
    menu
  end

  def menu
    puts ''
    puts "1) Place Bet"
    puts "2) Return to Casino"
    puts ''
    choice = gets.to_i
    if choice == 1
      place_bet
    end
  end

  def place_bet
    puts ''
    puts "How much do you want to bet? ($#{@player.wallet.amount})"
    puts ''
    amount = gets.to_f
    deal
  end
  
  def deal
    @player_card1 = @d.cards.sample
    @player_hand << @player_card1
    puts "Your card is: #{@player_hand.map(@rank)}"
    puts ''
    # puts "Is the next card high or low?"
    # puts "1) High"
    # puts "2) Low"
    # guess = gets.to_i
    # if guess == 1
    #   puts "You win!"
    #   wallet.amount
  end

end

# player = Player.new
# HighLow.new(player)
