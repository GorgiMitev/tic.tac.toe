# frozen_string_literal: true

require_relative '../lib/player'
require 'rspec'

describe 'Player' do
  subject(:p1) { Player.new('Leon', 'X') }
  let(:p2) { Player.new('De', 'O') }

  describe 'self.player_name' do
    it 'should raise error if no parameters' do
      expect { Player.new }.to raise_error ArgumentError
    end

    it 'should accept two parameters' do
      expect { subject }.not_to raise_error
    end

    it 'returns true if length of name is longer than 3' do
      expect(Player.player_name(p1.name)).to be true
    end

    it 'returns false if length of name is shorter than 3' do
      expect(Player.player_name(p2.name)).to be false
    end

    it 'should take set name to first parameter' do
      expect(subject.name).to eq('Leon')
      expect(p2.name).to eq('De')
    end

    it 'should take set marker to second parameter' do
      expect(subject.marker).to eq('X')
      expect(p2.marker).to eq('O')
    end
  end
end
