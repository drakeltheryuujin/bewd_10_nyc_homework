require 'rspec'
require './secret_number_game'

describe SecretNumberGame do
  context "Guessing" do
    before do
      @secret_number_game = SecretNumberGame.new
      @secret_number_game.secret_number = 5
    end

    it "is correct if I guess correctly" do
      @secret_number_game.correct?(5).should be_true
    end

    it "is not correct if I guessed too high" do
      @secret_number_game.correct?(3).should be_false
    end

    it "is not correct if I guessed too low" do
      @secret_number_game.correct?(10).should be_false
    end
  end
end
