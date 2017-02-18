class Recipe < ApplicationRecord
  belongs_to :user
  has_many :quantities
  has_many :quantities, inverse_of: :recipe
  has_many :ingredients, through: :quantities
  has_many :collections
  has_many :cooks, through: :collections, class_name: 'User'
  validates :name, :user_id, presence: true
  validates :name, uniqueness: true
  accepts_nested_attributes_for :quantities, reject_if: :all_blank, allow_destroy: true

end
