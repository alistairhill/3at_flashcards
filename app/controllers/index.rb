
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
  erb :newdeck
end

post '/newdeck' do
  deck = Deck.create(name: params[:deck_name], description: params[:deck_description])
  redirect "/newdeck/#{deck.id}/createcards"
end

get '/newdeck/:id/createcards' do
  @card_group = Deck.find(params[:id]).cards
  @deck_id = params[:id]
  @deck_name = Deck.find(params[:id]).name
  erb :createcards
end

post '/newdeck/:id/newcard' do
  Card.create(question: params[:card_question], answer: params[:card_answer], deck_id: params[:id])
  redirect back
end

post '/newdeck/:id/finishcards' do
  redirect '/decks'
end
