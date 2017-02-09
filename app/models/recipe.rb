class Recipe < ApplicationRecord
  belongs_to :user
  has_many :Ingredients
  has_many :collections
  has_many :cooks, through: :collections, class_name: 'User'
  
  accepts_nested_attributes_for :ingredients

end
