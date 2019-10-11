class Api::FavoritesController < ApplicationController
  before_action :authenticate_user

  def create
    @favorite = Favorite.new(
      user_id: current_user.id, 
      game_id: params[:game_id]
    )
    if @favorite.save
      render 'show.json.jb'
    else
      render json: {errors: @favorite.errors.full_messages}, status: 422
    end
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "Favorite successfully deleted"}
  end
end
