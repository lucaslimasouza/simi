class EquipesController < ApplicationController
	before_action :set_equipe, only: [:show, :edit, :update, :destroy]

	def index
	#LISTAR SOMENTE AS EQUIPES DO USUARIO CORRENTE
		@equipes = Equipe.from(Empresa.first)
		respond_with @equipes
	end

	def new
		@equipe = Equipe.new
		respond_with @equipe
	end

	def create
		@equipe = Equipe.new(equipe_params)
		#SETAR EMPRESA DO USUARIO CORRENTE
		@equipe.empresa = Empresa.first
		@equipe.save
		respond_with @equipe
	end

	def edit
		respond_with @equipe
	end

	def update
		@equipe.update(equipe_params)
		respond_with @equipe
	end

	def destroy
		@equipe.destroy
		respond_with @equipe
	end

	def show
		respond_with @equipe
	end

	private

	def equipe_params
		params.
			require(:equipe).permit(:nome)
	end

	def set_equipe
			#LISTAR SOMENTE AS EQUIPES DO USUARIO CORRENTE
		@equipe = Equipe.find(params[:id])
	end
end