
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/decks' do
  session[:user_id]='404'
  session[:user_name]='Rao'
  @decks = Deck.all
  erb :decks
end

get '/decks/:id' do
  game = Game.create(user_id: session[:user_id], deck_id: params[:id])
  session[:game_deck] = game.deck.cards
  session[:game_id] = game.id
  redirect "/games/#{game.id}"
end

get '/newdeck' do
  "New deck coming soon tm."
end