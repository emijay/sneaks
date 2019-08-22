class Brand < ActiveRecord::Base
  has_many :shoes
  has_many :upcoming_shoes
end