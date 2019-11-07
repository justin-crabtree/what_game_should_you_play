class Api::QuestionnairesController < ApplicationController

  def create
    @questionnaire = Questionnaire.new(
      checkedThemes: params[:checkedThemes],
      experienceLevel: params[:experienceLevel],
      gameLength: params[:gameLength],
      replayability: params[:replayability],
      gameFocus: params[:gameFocus],
      playerAmount: params[:playerAmount],
      platforms: params[:platforms],
      checkedGenres: params[:checkedGenres],
      rating: params[:rating]
    )
    if @questionnaire.save
      render 'show.json.jb'
    else
      render json: {errors: questionnaire.errors.full_messages}, status: :bad_request
    end
  end

  def index
    render 'index.json.jb'
  end
end
