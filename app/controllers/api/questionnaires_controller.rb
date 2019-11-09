class Api::QuestionnairesController < ApplicationController

  # figure out logic to take in different tags and display a game with those combonations of tags
  # make function for each question? so only a function is responsible for a certain group of tags?

  def create
    render 'index.json.jb'
  end
  
end
