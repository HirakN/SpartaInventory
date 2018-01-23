class SessionController < ApplicationController
  def login
  end

  def logout
    # destroy the session
    session[:token] = nil
    session[:user] = nil
    redirect_to login_path
  end

  def create

    response = User.authenticate params[:email], params[:password]
    puts APP_CONFIG['identity_api_url']
    if response.success?

      # parse the response
      auth = JSON.parse response.body 

      # save the token in the session
      session[:token] = auth['token']
      User.token = auth['token']

      # save the user id
      session[:user] = auth['user']

      # redirect
      redirect_to logs_path
    else
      redirect_to login_path, notice: 'Your details are incorrect'
    end
  end
end
