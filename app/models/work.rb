class Work < ActiveRecord::Base
	belongs_to :report
	has_many :activities

	validates :name ,  :presence => {:message => "El nombre de la tarea no puede estar vacío"}, length: {minimum: 6, maximum: 50, :message => "El nombre del proyecto debe tener entre 6 y 50 caracteres"}
	validates :descripcion, :presence => {:message => "La descripcion de la tarea no puede estar vacío"}, length: {minimum: 10, maximum:150, :message => "El objetivo del proyecto debe tener entre 10 y 150 caracteres"}
	validates :objetive ,  :presence => {:message => "El objetivo de la tarea no puede estar vacío"}, length: {minimum: 6, maximum: 50, :message => "El nombre del proyecto debe tener entre 6 y 50 caracteres"}
	
end
