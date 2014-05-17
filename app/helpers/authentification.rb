helpers do

  def login(params)
    params[:image_location] = 'http://www.clipartbest.com/cliparts/nTE/XXK/nTEXXKkTA.png' if params[:image_location]==nil
    user=User.find_by_email(params[:email])

    if user!=nil && user.password_hash == params[:password_hash]
      session[:user_id] = user.id
      session[:user_name] = user.name
      session[:image_location] = user.image_location
    end
  end

  def logoff
    session.clear
  end

  def logged?
    session[:user_name]!=nil
  end

end
