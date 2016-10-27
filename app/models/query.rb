# == Schema Information
#
# Table name: queries
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Query < ApplicationRecord
  belongs_to :user
  has_many :ingredients
end
