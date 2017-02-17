class Recipe < ApplicationRecord
  belongs_to :user
  has_many :quantities
  has_many :ingredients, through: :quantities
  has_many :collections
  has_many :cooks, through: :collections, class_name: 'User'
  validates :name, :user_id, presence: true
  validates :name, uniqueness: true

end
