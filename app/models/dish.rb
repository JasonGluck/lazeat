# == Schema Information
#
# Table name: dishes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Dish < ApplicationRecord

  has_many :favorites
  has_many :users, through: :favorites
  has_many :ingredient_dishes
  has_many :ingredients, through: :ingredient_dishes
  
end
