class Api::UsersController < ApplicationController
  # before_action :authenticate_user

  def index
    @users = User.all
    render "index.json.jbuilder"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    user = User.new(
    username: params[:username],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )

    if user.save
      render json: {message: 'User created successfully'}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username] || @user.username
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password_digest
    @user.save
    render "show.json.jbuilder"
  end
end
