class Api::GamesController < ApplicationController

  def index
    @games = Game.all
    if params[:rating]
      tag = Tag.find_by(name: params[:rating])
      p "ratingtag======================#{tag}"
      @games = tag.games
    end
    if params[:experienceLevel]
      tag = Tag.find_by(name: params[:experienceLevel])
      p "experienceleveltag======================#{tag}"
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end
    if params[:gameLength]
      tag = Tag.find_by(name: params[:gameLength])
      p "gamelengthtag======================#{tag}"
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end
    if params[:replayability]
      tag = Tag.find_by(name: params[:replayability])
      p "replayabilitytag======================#{tag}"
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end
    if params[:gameFocus]
      tag = Tag.find_by(name: params[:gameFocus])
      p "gamefocustag======================#{tag}"
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end
    if params[:playerAmount]
      tag = Tag.find_by(name: params[:playerAmount])
      p "playeramounttag======================#{tag}"
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end
    if params[:checkedGenres]
      params[:checkedGenres].each do |theme|
        tag = Tag.find_by(name: theme)
        p "genrestag======================#{tag}"
        @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
      end
    end
    if params[:platforms]
      params[:platforms].each do |theme|
        tag = Tag.find_by(name: theme)
        p "platformtag======================#{tag}"
        @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
      end
    end
    if params[:checkedThemes]
      params[:checkedThemes].each do |theme|
        tag = Tag.find_by(name: theme)
        p "themetag======================#{tag}"
        @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
      end
    end
    render 'index.json.jb'
  end

  def show
    @game = Game.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
