class Person < ActiveRecord::Base
	has_many :ratings
	has_many :dogs
  validates :first_name, :last_name, { :presence => true }
end
