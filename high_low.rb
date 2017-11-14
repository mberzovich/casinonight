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
    @bet = gets.strip.to_i
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
    if choice1 == 1
      if @dealer_card.value > @player_card.value
        puts ''
        puts "You Win! Your card is lower than the dealer card." 
        puts "($#{@bet}) has been added to your wallet!"
        puts ''
        @player.wallet.add(@bet)
      elsif @dealer_card.value < @player_card.value
        puts "You Lose! Your card is higher than the dealer card." 
        puts "($#{@bet}) has been deducted to your wallet!"
        puts ''
        @player.wallet.subtract(@bet)
      else 
        "Push! Your bet of ($#{@bet}) has been returned to your wallet."
      end    
    elsif choice1 == 2
      if @dealer_card.value < @player_card.value
        puts ''
        puts "You Win! Your card is higher than the dealer card." 
        puts "($#{@bet}) has been added to your wallet!"
        puts ''
        @player.wallet.add(@bet)
      elsif @dealer_card.value > @player_card.value
        puts "You Lose! Your card is lower than the dealer card." 
        puts "($#{@bet}) has been deducted to your wallet!"
        puts ''
        @player.wallet.subtract(@bet)
      else 
        "Push! Your bet of ($#{@bet}) has been returned to your wallet."
      end    
    else    
      puts "Invalid answer. Try again"
    end
    puts "Your wallet now has $#{@player.wallet.amount}"
    replay
  end
    
  
  # def result
    
  #        elsif  is 1 and card2 < @rank = Lose (subtract bet from wallet)
  #          puts "You Lose! ($#{@player.wallet.amount}) has been taken to your wallet!"
  #        elsif choice1 is 2 and card2 > @rank = Lose (subtract bet from wallet)
  #          puts "You Lose! ($#{@player.wallet.amount}) has been taken to your wallet!"
  #        elsif choice1 is 2 and card2 < @rank = Win (add bet to wallet)
  #          puts "You Win! ($#{@player.wallet.amount}) has been added to your wallet!"
  #        elsif choice1 is 1 and card2 = @rank = Push (wallet does not change)
  #          puts "Push! Your bet of ($#{@player.wallet.amount}) has been returned."
  #        elsif choice1 is 2 and card2 = @rank = Push (wallet does not change)
  #          puts "Push! Your bet of ($#{@player.wallet.amount}) has been returned."
    
 # 


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

# player = Player.new
# HighLow.new(player)
