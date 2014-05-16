require 'spec_helper'

Capybara.app = app

describe "Games controller" do

  describe "POST /games/:game_id" do
    context "When a correct answer is entered" do

      it 'updates the score by 2' do
        game = Game.create(user_id: 1, deck_id: 1)
        card = Card.create(question: "spec test", answer: "true", deck_id: 1)
        deck = Deck.create(name: "spectest", description: "testing the feature")
        old_score = game.score
        # puts old_score.inspect
        post '/games', {guess: "true"}
        # p game.score
        # expect{post '/games', {guess: "true"}}.to change{game.score}.by(2)
        # new_score = game.score
        # puts new_score.inspect
        # expect(game.score - old_score).to eq(2)

      end

    end

      # context "When a wrong answer is entered" do

      #   it 'decreases the score by 1' do
      #     post '/games'
      #     expect(last_response)
      #   end

      # end
  end
end
