def login(params)
  user=User.find_by_email(params[:email])
  if user.password == params[:password]
    session[:user_id] = user.id
    session[:user_name] = user.name
  else
    "Wrong Login/Password combination."
  end
end

def logoff
  session.clear
end

def logged?
  session[:user_name]!=nil
end