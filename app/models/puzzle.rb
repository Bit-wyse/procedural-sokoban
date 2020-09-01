class Puzzle < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3 }
  validates :game, presence: true, length: { minimum: 3 }
end
