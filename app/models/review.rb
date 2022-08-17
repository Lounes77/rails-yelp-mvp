class Review < ApplicationRecord
  belongs_to :restaurant

  RATING_STARS = ( 0..5 )
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: RATING_STARS }
end
