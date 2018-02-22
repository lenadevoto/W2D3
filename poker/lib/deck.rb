require_relative 'card'

class Deck
  attr_reader :cards
  SUITS = %w(C S D H)
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  def initialize
    @cards = []
  end

  def self.generate
    deck = Deck.new
    SUITS.each do |suit|
      VALUES.each do |value|
        deck.cards << Card.new(value, suit)
      end
    end
  end
end
