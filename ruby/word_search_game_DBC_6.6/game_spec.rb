require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

it "starts a new game" do
    expect(game.begin_game).should
  end

end