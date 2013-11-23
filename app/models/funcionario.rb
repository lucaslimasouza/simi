class Funcionario < ActiveRecord::Base
	validates_presence_of :nome, :numero_linha

	has_many :localizacaos
end
