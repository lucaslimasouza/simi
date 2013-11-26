class Funcionario < ActiveRecord::Base
	validates_presence_of :nome, :numero_linha

	has_many :localizacaos
	belongs_to :equipe

	def self.from(empresa)
		equipes = empresa.equipes
		self.where(equipe_id: equipes)
	end
end
