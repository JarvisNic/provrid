class Activity < ActiveRecord::Base
	belongs_to :work
	validates :name ,  :presence => {:message => "El nombre de la actividad no puede estar vacío"}, length: {minimum: 6, maximum: 50, :message => "El nombre de la actividad debe tener entre 6 y 50 caracteres"}
	validates :description, :presence => {:message => "La descripción de la actividad no puede estar vacío"}, length: {minimum: 10, maximum:150, :message => "El objetivo debe tener entre 10 y 150 caracteres"}

def self.search(search)
		if search.present?	
			where(["name LIKE ?" ,"%#{search}%"])	
		else
			all
		end
	end


end
