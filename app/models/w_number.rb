class WNumber < ActiveRecord::Base
	belongs_to :order

	def self.search(search)
		if search
			where(['number LIKE ?', "%#{search}%"])
		else
			all
		end
	end
end
