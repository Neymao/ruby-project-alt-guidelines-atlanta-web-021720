class Stadium < ActiveRecord::Base
    has_many :game
    has_many :teams, through: :game 
end

    