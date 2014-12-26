class Estado < ActiveRecord::Base
	has_many :cidades, dependent: :destroy

	def to_param
		"#{id}-#{name}"
	end
end
