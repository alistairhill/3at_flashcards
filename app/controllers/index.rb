get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/decks' do
  session={user_id: 404, user_name: "Rao"}
  "#{session}"
  #erb :decks
end