require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

it "sets number of guesses" do
  @past_guess = ["n"]
    expect(game.guess_count_updater("n")).to be true
  end

end