describe 'Deck class' do

  describe '#initialize' do
    subject(:deck) { Deck.new }
    it "will generate 52 unique cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "receives card initialize method"
  end

end
