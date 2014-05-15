
get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/decks' do
  #session={user_id: 404, user_name: "Rao"}
  session[:user_id]='404'
  session[:user_name]='Rao'
  #erb :decks
  redirect '/test'
end

get '/test' do
    "#{session[:user_name]}, #{session[:user_id]}"
end