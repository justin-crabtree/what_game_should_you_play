class Api::UsersController < ApplicationController
  before_action :authenticate_user, only: [:update, :destroy]

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render 'show.json.jb'
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user == current_user
      @user.name = params[:name] || @user.name 
      @user.email = params[:email] || @user.email
      @user.password = params[:password] || @user.password_digest
      if @user.save
        render 'show.json.jb'
      else
        render json: {errors: @user.errors.full_messages}, status: 422
      end
    else
      render json: {error: "You must be the user to update profile"}
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user == current_user
      @user.destroy
      render json: {message: "User successfully deleted"}
    else
      render json: {error: "You must be the user to delete profile"}
    end
  end
end
