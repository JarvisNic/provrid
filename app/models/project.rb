class Project < ActiveRecord::Base
	has_many :reports
	belongs_to :cordinators
end

