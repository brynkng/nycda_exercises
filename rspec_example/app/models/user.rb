class User < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :email

  def self.foo
    "bar"
  end
end
