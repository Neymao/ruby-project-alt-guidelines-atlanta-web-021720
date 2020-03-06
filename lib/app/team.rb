class Team < ActiveRecord::Base
    has_many :game
    has_many :stadia, through: :game 
end 