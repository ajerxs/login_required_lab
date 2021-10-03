class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
    else
      redirect_to controller: "sessions", action: "new"
    end
  end

  def destroy
    session.delete :name
  end

end
