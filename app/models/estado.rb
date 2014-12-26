class Estado < ActiveRecord::Base
	has_many :cidades, dependent: :destroy
end
