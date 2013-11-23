class Empresa < ActiveRecord::Base
	validates_presence_of :razao_social, :cnpj, :telefone, :endereco

	has_many :equipes
end
