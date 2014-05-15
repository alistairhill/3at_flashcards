def login(params)
  user=User.find_by_email('ali@uk.com')
  if user.password == params[:password]
    session[:user_id] = user.id
    session[:user_name] = user.name
  else
    "Wrong Login/Password combination."
  end
end

def logoff
  session[:user_id]=nil
  session[:user_name]=nil
end

def logged?
  session[:user_name]!=nil
end