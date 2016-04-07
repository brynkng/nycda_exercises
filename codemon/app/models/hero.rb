class Hero < ActiveRecord::Base
  belongs_to :pokemon

  has_secure_password
end
