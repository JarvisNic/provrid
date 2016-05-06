class ReporteProyectos < Prawn::Document
	def to_pdf
		text "abc"
		render 
	end
end