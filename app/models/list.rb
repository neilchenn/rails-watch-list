class List < ApplicationRecord
  has_many :bookmarks
  # has_many through is needed because it's through a joint table we delete it
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates_uniqueness_of :name
end
