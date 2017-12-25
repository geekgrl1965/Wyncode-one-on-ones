require_relative "card"

class Deck
  attr_reader :cards
  def initialize
    @cards = []
    %w[ spades hearts diamonds clubs].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end
  def draw
    @cards.shuffle.pop
  end
end

puts Deck.new.draw
