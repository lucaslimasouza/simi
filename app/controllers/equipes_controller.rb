class EquipesController < ApplicationController

	def index
		@equipes = Equipes.all
	end

	def new
		@equipe = Equipe.new
		respond_with @equipe
	end
end
