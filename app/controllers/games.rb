

get '/games/:game_id' do
  @game_name = Game.find(params[:game_id])#.name
  @game_score = Game.find(params[:game_id]).score
  @card = Card.first
  @score_correct = session[:last_answer]
  erb :games
end

post '/games' do
  game_id = session[:game_id]
  @game = Game.find(game_id)
  @card = Card.first
  if params[:guess] == @card.answer
    @game.score += 2
    session[:last_answer] = "correct"
    @game.save
  else
    @game.score -= 1
    session[:last_answer] = "incorrect"
    @game.save
  end
  redirect to "/games/#{game_id}"
end

# get '/bands/new' do
#   erb :new_band
# end

# get '/bands/:id' do
#   @band = Band.find(params[:id])
#   erb :show_band
# end

# get '/info' do
#   Demo.new(self).info
# end
