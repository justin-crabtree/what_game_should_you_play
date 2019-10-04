class Game < ApplicationRecord

  has_many :favorites
  has_many :game_tags
  has_many :tags, through: :game_tags
end
