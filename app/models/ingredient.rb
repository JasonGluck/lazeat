# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  calories   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ApplicationRecord
  has_many :ingredient_dishes
  has_many :dishes, through: :ingredient_dishes
  has_many :favorites, through: :dishes
end
