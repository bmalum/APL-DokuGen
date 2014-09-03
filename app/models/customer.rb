class Customer < ActiveRecord::Base
	has_many :contactpersons
	has_many :orders
end
