class Card
 # Getter and Setter methods for rank, suit and color
 attr_accessor :rank, :suit, :color, :value
 # Gets called when you call the new method to create an instance
 # card = Card.new('10', 'K', 'Black')
 def initialize(rank, suit, color, value)
   @rank = rank
   @suit = suit
   @color = color
   @value = value
 end
end
