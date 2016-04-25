class Report < ActiveRecord::Base
	has_many :works
	belongs_to :project

	validates :name ,  :presence => {:message => "El nombre del reporte no puede estar vacío"}, length: {minimum: 6, maximum: 50, :message => "El nombre del proyecto debe tener entre 6 y 50 caracteres"}
	validates :desc, :presence => {:message => "La descripción del reporte no puede estar vacío"}, length: {minimum: 10, maximum:150, :message => "El objetivo del proyecto debe tener entre 10 y 150 caracteres"}

end
