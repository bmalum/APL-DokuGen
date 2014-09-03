class Order < ActiveRecord::Base
	belongs_to :customer
	belongs_to :contactperson
	has_many :w_numbers
end
