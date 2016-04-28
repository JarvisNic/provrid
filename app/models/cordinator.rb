class Cordinator < ActiveRecord::Base
	has_many :projects
	belongs_to :user

def self.search(search)
		if search.present?	
			where(["name LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end

end
