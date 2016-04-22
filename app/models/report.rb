class Report < ActiveRecord::Base
	has_many :works
	belongs_to :project
end
