class Cordinator < ActiveRecord::Base
	has_many :projects
	belongs_to :user
scope :for_activities, ->(coridnator) {joins("join projects on cordinators.id = projects.cordinator_id join reports on projects.id = reports.project_id join works on reports.id = works.report_id join activities on works.id = activities.work_id ").where("cordinators.id = :name", { name: coridnator })}

def self.search(search)
		if search.present?	
			where(["name LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end

end
