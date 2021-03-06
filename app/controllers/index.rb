
get '/' do
  erb :index
end

get '/decks' do
  session[:last_answer]=nil
  @decks = Deck.all
  erb :decks
end

get '/:deck_id/setgame' do
  game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
  session[:game_id] = game.id
  game_deck=[]
  game.deck.cards.shuffle.each {|card| game_deck<<card.id}
  session[:game_deck] = game_deck
  redirect "/game"
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

post '/login' do
  session.clear
  login(params)
  redirect '/decks' if logged?
  redirect '/loginerror' if !logged?
end

get '/logout' do
  logoff
  redirect '/'
end

get '/loginerror' do
  erb :loginerror
end

get '/highscore' do
  @games = Game.all.sort_by!{|game| game.score}.reverse
  erb :highscore
end

get '/signup' do
  erb :_signup
end

post '/newuser' do
  User.create(params)
  redirect '/'
end
