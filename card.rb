class Card
   attr_reader :value
   attr_reader :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

    def face
      if @value == 1
        "Ace"
      elsif @value == 11
        "Jack"
      elsif @value == 12
        "Queen"
      elsif @value == 13
        "King"
      else
        @value
      end
    end

    def to_s
      "#{value} of #{suit.capitalize}"
    end
end
