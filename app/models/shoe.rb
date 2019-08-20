class Shoe < ActiveRecord::Base
  belongs_to :size
  belongs_to :brand
  belongs_to :user
end