class Work < ActiveRecord::Base
	belongs_to :report
	has_many :activities	

def self.search(search)
		if search.present?	
			where(["works.name LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end
	
end
