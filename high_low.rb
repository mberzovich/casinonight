class HighLow
  attr_accessor :player

  def initialize(player)
    @player = player
    puts "Welcome to High Low!"
    menu
  end

  def menu
    puts "1) Place Bet!"
    puts "2) Reutrn to Casino"
    choice =
    # puts "Do you want to play High Low?"
    # choice = gets.strip
    # if choice.downcase = 'no'
    #   @casino.menu
    end
  end
end
