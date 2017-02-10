class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :collections
  has_many :cooks, through: :collections, class_name: 'User'
  validates :name, :user_id, presence: true
  accepts_nested_attributes_for :ingredients

end
