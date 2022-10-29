class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many_attached :photo
  # you can;t destro if theere is a bookmark
  validates :name, uniqueness: true, presence: true
end
