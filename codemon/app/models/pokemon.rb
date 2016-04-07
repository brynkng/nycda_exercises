class Pokemon < ActiveRecord::Base
  has_many :heros
  has_many :opponents
end
