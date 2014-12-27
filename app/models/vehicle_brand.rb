class VehicleBrand < ActiveRecord::Base
		has_many :vehicle_names, dependent: :destroy
end
