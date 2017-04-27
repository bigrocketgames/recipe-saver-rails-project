class Review < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :user_id, :recipe_id, :content, presence: true
  
end
