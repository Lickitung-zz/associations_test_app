class Api::CharactersController < ApplicationController

  def index
    @characters = Character.all
    render "index.json.jbuilder"
  end

  def create
    @character = Character.create(
      name: params[:name],
      lvl: params[:lvl],
      class_type: params[:class_type]
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
