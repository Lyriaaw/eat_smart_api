class Restaurant < ApplicationRecord
  has_many :dishes
  has_many :tables


end
