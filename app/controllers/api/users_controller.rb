class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @user = User.create(
      username: params[:username],
      email: params[:email]
    )
    render "show.json.jbuilder"
  end
end
