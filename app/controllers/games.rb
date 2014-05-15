

get '/games/:game_id' do
  @game_name = "test" #Game.where(id: params[:id]).name
  @card = Card.first
  erb :games
end

post '/games' do
  @game_score = 0
  if params[:guess] == @card.answer
    @game_score += 2
  else
    @game_score-= 1
  end
  redirect 'games/:game_id'
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
