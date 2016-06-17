class Report < Prawn::Document
	def to_pdf
		stroke_bounds
		bounding_box [0,cursor],:width => bounds.right, :height => 70 do
			stroke_bounds
			text "Normal text", :align=> :right, :style=> :bold
			text "Bold text",:aling=> :right
			#image "app/assets/images/"
		end
		text "mos el punto de entrada en el cont"
		render
	end
end