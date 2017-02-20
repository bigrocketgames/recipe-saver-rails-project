class Collection < ApplicationRecord
  belongs_to :cook, class_name: 'User'
  has_many :foods, class_name: 'Recipe'
  validates :name, presence: true

end
