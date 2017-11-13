class HighLow
  def initialize
    @player = player
    puts "Do you want to play High Low?"
    choice = gets.strip
    if choice.downcase = 'no'
      @casino.menu
    end
  end
end
