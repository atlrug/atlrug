class SessionsController < ApplicationController
  def create
    unless @user = User.find_by_hash(auth_hash)
      @user = User.create_from_hash(auth_hash)
    end

    if @user.atlrug_organizer?
      self.current_user = @user
      redirect_to root_url, notice: 'Logged in!'
    else
      redirect_to root_url, notice: "You're not an organizer!"
    end
  end

  def destroy
    self.current_user = nil
    redirect_to root_url, notice: 'Logged out!'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
