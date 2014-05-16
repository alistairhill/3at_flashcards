require 'spec_helper'

Capybara.app = app

describe "Games controller" do

  describe "POST /games/:game_id" do
    context "When a correct answer is entered" do

      it 'updates the score by 5' do


        deck = Deck.create(name: "spectest", description: "testing the feature")
        card = Card.create(question: "spec test", answer: "true", deck_id: deck.id)
        game = Game.create(user_id: 1, deck_id: deck.id)
        p game
        game_id = game.id
        old_score = game.score
        fake_session = { :game_id => game.id, :game_deck => [deck]}
        post '/turn', {guess: "true"}, { 'rack.session' => fake_session }
        game.reload
        p game
        new_score = game.score
        expect(new_score - old_score).to eq(5)

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
