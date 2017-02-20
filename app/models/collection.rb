class Collection < ApplicationRecord
  belongs_to :cook, class_name: 'User'
  has_many :recipe_collections
  has_many :recipes, through: :recipe_collections
  validates :name, presence: true

end
