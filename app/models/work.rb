class Work < ActiveRecord::Base
	belongs_to :report
	has_many :activities	
end
