class Api::GamesController < ApplicationController

  def index
    @games = Game.all.to_a
    
    if params[:experienceLevel]
      tag = Tag.find_by(name: params[:experienceLevel])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:gameLength]
      tag = Tag.find_by(name: params[:gameLength])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:replayability]
      tag = Tag.find_by(name: params[:replayability])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:gameFocus]
      tag = Tag.find_by(name: params[:gameFocus])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:playerAmount]
      tag = Tag.find_by(name: params[:playerAmount])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:platforms]
      tag = Tag.find_by(name: params[:platforms])
      
      @games = @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
    end

    if params[:checkedGenres]
      selected_games = []
      params[:checkedGenres].each do |genre|
        tag = Tag.find_by(name: genre)
        selected_games << @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
        selected_games = selected_games.flatten!.uniq
      end
      @games = selected_games
    end

    if params[:checkedThemes]
      params[:checkedThemes].each do |theme|
        tag = Tag.find_by(name: theme)
        selected_games << @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
        selected_games = selected_games.flatten!.uniq
      end
      @games = selected_games
    end

    if params[:checkedRatings]
      params[:checkedRatings].each do |rating|
        tag = Tag.find_by(name: rating)
        
        selected_games << @games.select {|game| game.game_tags.where(tag_id: tag.id).count > 0 }
        selected_games = selected_games.flatten!.uniq
      end
      @games = selected_games
    end

    render 'index.json.jb'
  end

  def show
    @game = Game.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
