require_relative "../lib/game_logic.rb"
require_relative('../lib/game')
require "rspec"




describe "Gamelogic" do
  subject(:game_logic) {Game.new }
  let(:@player2_trn) {[]}
  let(:@player1_trn) {[]}

  
  describe "cal_turns" do
    it "returns sum of arry" do
      expect(subject.cal_turns).to eql([])
    end
  end
end