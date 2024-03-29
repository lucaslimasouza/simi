class EmpresasController < ApplicationController
	 before_action :set_empresa, only: [:show, :edit, :update, :destroy]

	def index
		@empresas = Empresa.all
		respond_with @empresas
	end

	def new
		@empresa = Empresa.new
		respond_with @empresa
	end

	def create
		@empresa = Empresa.new(empresa_params)

		@empresa.save
		respond_with @empresa
	end

	def show
		respond_with @empresa
	end

	def edit
		respond_with @empresa
	end

	def update
		@empresa.update(empresa_params)
		respond_with @empresa
	end

	def destroy
		@empresa.destroy
		respond_with @empresa
	end

	private

	def empresa_params
		params.
			require(:empresa).
			permit(:razao_social, :telefone, :cnpj, :endereco)
	end

	def set_empresa
    @empresa = Empresa.find(params[:id])
  end
end
