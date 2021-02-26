require './card.rb'

class Deck

  attr_reader :cards

      def initialize
        values = [1,2,3,4,5,6,7,8,9,10,11,12,13]
        suits=["hearts", "diamonds", "clubs", "spades"]
        @cards = []

        values.each do |value|
          suits.each do |suit|
            card = Card.new(value,suit)
            @cards << card
          end
        end
      end

      def shuffle
        @cards.shuffle!
      end

      def draw 
        @cards.slice!(rand(@cards.length))
      end
end





