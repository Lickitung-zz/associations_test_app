class Api::CharactersController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      @characters = current_user.characters
      render "index.json.jbuilder"
    else
      @characters = Character.all
    end
  end

  def create
    @character = Character.create(
      name: params[:name],
      lvl: params[:lvl],
      class_type: params[:class_type],
      user_id: params[:user_id]
    )
    render "show.json.jbuilder"
  end

  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def delete
    @character = Character.find_by(id: params[:id])
    @character.destroy
    render json: {message: "Character deleted."}
  end
end
