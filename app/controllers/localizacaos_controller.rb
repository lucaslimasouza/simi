class LocalizacaosController < ApplicationController
	before_action :set_localizacao, only: [:destroy, :update, :edit, :show]

	def index
		@localizacoes = Localizacao.from(Empresa.first)
		respond_to do |format|
			format.js {render json: @localizacoes,:include => :funcionario }
		end
	end

	def new
		@localizacao = Localizacao.new
		respond_with @localizacao
	end

	def create
		@localizacao = Localizacao.new(localizacao_params)
		@localizacao.funcionario=Funcionario.first
		@localizacao.save
		respond_with @localizacao
	end

	def edit
		respond_with @localizacao
	end

	def update
		@localizacao.update(localizacao_params)
		respond_with @localizacao
	end

	def show
		respond_with @localizacao
	end

	def destroy
		@localizacao.destroy
		respond_with @localizacao
	end


	private

	def localizacao_params
		params.
			require(:localizacao).
				permit(:latitude, :longitude)
	end

	def set_localizacao
		@localizacao = Localizacao.find(params[:id])
	end
end
