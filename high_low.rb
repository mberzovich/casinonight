require_relative 'carddeck'
require_relative 'cardclass'

class HighLow

  def initialize(player)
    @player = player
    @d = Deck.new
    @d.cards.shuffle
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

    puts "Your card is: #{@player_card1.rank} of #{@player_card1.suit}"
    puts ''
  #  guess
  end

#   def guess
#     puts "Is the next card high or low?"
#     puts "1) High"
#     puts "2) Low"
#     choice1 = gets.to_i
#         #1 if choice1 is 1 and card2 > @rank = Win (add bet to wallet)
#         #2 if choice1 is 1 and card2 < @rank = Lose (subtract bet from wallet)
#         #3 if choice1 is 2 and card2 > @rank = Lose (subtract bet from wallet)
          #4 if choice1 is 2 and card2 < @rank = Win (add bet to wallet)
          #5 if choice1 is 1 and card2 = @rank = Push (wallet doesn't change)
          #6 if choice1 is 2 and card2 = @rank = Push (wallet doesn't change)

#     #   puts "You win!"
#     #   wallet.amount
#   end
end

# # player = Player.new
# # HighLow.new(player)
