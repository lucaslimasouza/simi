class Localizacao < ActiveRecord::Base
	validates_presence_of :latitude, :longitude

	belongs_to :funcionario

	def self.from(empresa)
		localizacoes_ordenadas = self.ordena_por_created_at_localizacao(Funcionario.from(empresa))

		self.agrupa_por_funcionario(localizacoes_ordenadas)
	end

	def ==(outra_localizacao)
		self.funcionario.id == outra_localizacao.funcionario.id
	end

	private

	def self.com_funcionario
		self.joins(:funcionario).includes(:funcionario)
	end

	def self.agrupa_por_funcionario(localizacoes_ordenadas)
		localizacoes_agrupadas = []
		localizacoes_ordenadas.each do |position|
			localizacoes_agrupadas<< position	unless localizacoes_agrupadas.include? position
		end
		localizacoes_agrupadas
	end

	def self.ordena_por_created_at_localizacao(funcionarios)
		self.com_funcionario.
				where(funcionario_id: funcionarios).
						order('localizacaos.created_at DESC')
	end

end