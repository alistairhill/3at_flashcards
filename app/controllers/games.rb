

get '/games/:game_id' do
  @game_name = Game.find(params[:game_id])#.name
  @game_score = Game.find(params[:game_id]).score
  @card = Card.first
  erb :games
end

post '/games' do
  game_id = 1
  @game = Game.find(game_id)
  @card = Card.first
  if params[:guess] == @card.answer
    @game.score += 2
    @game.save
  else
    @game.score -= 1
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
