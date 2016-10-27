# == Schema Information
#
# Table name: ingredient_dishes
#
#  id            :integer          not null, primary key
#  ingredient_id :integer
#  dish_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class IngredientDish < ApplicationRecord
  belongs_to :ingredient
  belongs_to :dish
end
