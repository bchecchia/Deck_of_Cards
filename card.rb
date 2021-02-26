class Card 

    attr_reader :value, :suit

    def initialize(value,suit)
        @value = value
        if (@value > 13 || @value < 1) || !@value.is_a?(Integer)
            raise ArgumentError
        end
        @suit = suit
        if ["hearts", "diamonds", "spades", "clubs"].include?(@suit)
           @suit = suit
        else
            raise ArgumentError
        end
        
    end

    def face
        case @value
        when 1
          "Ace"
        when 11
          "Jack"
        when 12
          "Queen"
        when 13
          "King"
        else
          @value.to_s
        end
    end
end