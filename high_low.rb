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
    elsif choice != 2
      puts "Invalid Input"
      menu
    else
    end
  end

  def place_bet
    puts ''
    puts "How much do you want to bet? ($#{@player.wallet.amount})"
    puts ''
    @bet = gets.strip.to_i
    if @bet > @player.wallet.amount
      puts "NOT ENOUGH $$ YOU CHEAP BASTARD!"
      place_bet
    else
    end
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

  def replay
    puts "1) Play Again?"
    puts "2) Return to Casino"
    puts ''
    choice = gets.to_i
    if choice == 1
      place_bet
    elsif choice != 2
      puts "Invalid Input"
      menu
    else
    end
  end
end

# player = Player.new
# HighLow.new(player)
