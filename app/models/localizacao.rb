class Localizacao < ActiveRecord::Base
	validates_presence_of :latitude, :longitude

	belongs_to :funcionario
end
