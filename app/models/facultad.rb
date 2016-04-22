class Facultad < ActiveRecord::Base
	has_one :user
	has_one :coordinator

end
