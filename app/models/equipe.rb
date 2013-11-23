class Equipe < ActiveRecord::Base
	validates_presence_of :nome

	belongs_to :empresa
	has_many :funcionarios
end
