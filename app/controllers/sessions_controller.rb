class SessionsController < ApplicationController
  def new

  end

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome back!"
      redirect_to(session[:intended_url] || root_url)
      session[:intended_url] = nil
    else
      flash.now[:alert] = "Invalid email or password combination. Try again!"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You're all logged out. Come back soon."
  end
end
