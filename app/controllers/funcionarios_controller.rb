class FuncionariosController < ApplicationController
	before_action	:set_funcionario, only: [:update,:edit,:destroy, :show]

	def index
		@funcionarios = Funcionario.all
		respond_with @funcionarios
	end

	def new
		@funcionario = Funcionario.new
		respond_with @funcionario
	end

	def create
		@funcionario = Funcionario.new(funcionario_params)
		@funcionario.save
		respond_with @funcionario
	end

	def edit
		respond_with @funcionario
	end

	def show
		respond_with @funcionario
	end

	def update
		@funcionario.update(funcionario_params)
		respond_with @funcionario
	end

	def destroy
		@funcionario.destroy
	end

	private

	def set_funcionario
		@funcionario = Funcionario.find(params[:id])	
	end

	def funcionario_params 
		params.
			require(:funcionario).
			permit(:nome, :numero_linha)
	end
end
