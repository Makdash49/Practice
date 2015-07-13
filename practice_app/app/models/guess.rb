class Guess < ActiveRecord::Base
  belongs_to :game

  validates :floor, presence: true
end
