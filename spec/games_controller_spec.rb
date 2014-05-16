require 'spec_helper'

Capybara.app = app

describe "Games controller" do

  describe "POST /games/:game_id" do
    context "When a correct answer is entered" do

      it 'updates the score by 2' do

        game = Game.create(user_id: 1, deck_id: 1)
        game_id = game.id
        card = Card.create(question: "spec test", answer: "true", deck_id: 1)
        deck = Deck.create(name: "spectest", description: "testing the feature")
        old_score = game.score
        fake_session = { :game_id => game.id }
        post '/games', {guess: "true"}, { 'rack.session' => fake_session }
        game.reload
        new_score = game.score
        expect(game.score - old_score).to eq(2)

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
