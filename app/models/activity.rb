class Activity < ActiveRecord::Base
	belongs_to :work
	validates :name ,  :presence => {:message => "El nombre de la actividad no puede estar vacío"}, length: {minimum: 6, maximum: 50, :message => "El nombre de la actividad debe tener entre 6 y 50 caracteres"}
	validates :description, :presence => {:message => "La descripción de la actividad no puede estar vacío"}, length: {minimum: 10, maximum:150, :message => "El objetivo debe tener entre 10 y 150 caracteres"}
scope :for_activities, ->(coridnator) {select("activities.*").distinct.joins("inner join works on works.id = activities.work_id inner join reports on reports.id = works.report_id inner join projects on projects.id = reports.project_id inner join cordinators on cordinators.id = projects.cordinator_id ").where("cordinators.id = :name", { name: coridnator})}
def self.search(search)
		if search.present?	
			where(["activities.name LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end


end
