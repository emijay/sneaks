class Shoe < ActiveRecord::Base
  belongs_to :size
  belongs_to :brand
end