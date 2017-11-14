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
    @player_card = @d.cards.sample

    puts "Your card is: #{@player_card.rank} of #{@player_card.suit}"
    puts ''
    guess
  end

  def guess
    puts "Is the next card high or low?"
    puts "1) High"
    puts "2) Low"
    choice1 = gets.to_i
    @dealer_card = @d.cards.sample
    puts "The dealer card is: #{@dealer_card.rank} of #{@dealer_card.suit}"

  def result
         if choice == 1 & @dealer_card.rank > @player_card1.rank (add bet to wallet)
          puts "You Win! Your card is higher than the dealer card. ($#{@player.wallet.amount}) has been added to your wallet!"
         elsif choice1 is 1 and card2 < @rank = Lose (subtract bet from wallet)
           puts "You Lose! ($#{@player.wallet.amount}) has been taken to your wallet!"
         elsif choice1 is 2 and card2 > @rank = Lose (subtract bet from wallet)
           puts "You Lose! ($#{@player.wallet.amount}) has been taken to your wallet!"
         elsif choice1 is 2 and card2 < @rank = Win (add bet to wallet)
           puts "You Win! ($#{@player.wallet.amount}) has been added to your wallet!"
         elsif choice1 is 1 and card2 = @rank = Push (wallet does not change)
           puts "Push! Your bet of ($#{@player.wallet.amount}) has been returned."
         elsif choice1 is 2 and card2 = @rank = Push (wallet does not change)
           puts "Push! Your bet of ($#{@player.wallet.amount}) has been returned."
         else invalid answer. try again
  end
  replay
end

  def replay
    puts "1) Play Again?"
    puts "2) Return to Casino"
    puts ''
    choice = gets.to_i
    if choice == 1
      place_bet
    else choice == 2
      Casino.new
    end
  end  
end

# # # player = Player.new
# # # HighLow.new(player)
