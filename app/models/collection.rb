class Collection < ApplicationRecord
  belongs_to :cook, class_name: 'User'
  belongs_to :food, class_name: 'Recipe'

end
