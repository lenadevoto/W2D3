require 'rspec'
require 'card'

describe 'Card class' do

  subject(:ace_spades) { Card.new("A", "spades")}
  describe '#initialize' do
    it 'sets a value' do
      expect(ace_spades.value).to eq("A")
    end

    it 'sets a suit' do
      expect(ace_spades.suit).to eq("spades")
    end

  end
end
