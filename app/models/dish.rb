class Dish < ApplicationRecord

  has_many :favorites
  has_many :users, through: :favorites
  has_many :ingredient_dishes
  has_many :ingredients, through: :ingredient_dishes
  
end
