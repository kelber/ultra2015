class Cidade < ActiveRecord::Base
	belongs_to :estado
	has_many :lojas

	def to_param
		"#{id}-#{name}"
	end
end
