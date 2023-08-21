class Challenge < ApplicationRecord
    has_one :score
    has_one :map
    has_many :players, through: :scores
 
    validates :id, presence: true
end
