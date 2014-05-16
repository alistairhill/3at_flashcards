helpers do

  def login(params)
    user=User.find_by_email(params[:email])
    user.password_hash ==params[:password_hash]
    if user.password_hash == params[:password_hash]
      session[:user_id] = user.id
      session[:user_name] = user.name
    end
  end

  def logoff
    session.clear
  end

  def logged?
    session[:user_name]!=nil
  end

end