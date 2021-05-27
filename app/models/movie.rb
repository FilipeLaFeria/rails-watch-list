class Movie < ApplicationRecord

  has_many :bookmarks, dependent: :destroy

  validates :title, :overview, :poster_url, :rating, presence: true
  validates :title, uniqueness: true

end
