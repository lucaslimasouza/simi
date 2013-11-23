class EmpresasController < ApplicationController

	def index
		@empresas = Empresa.all
		respond_with @empresas
	end

	def new
		@empresa = Empresa.new
		respond_with @empresa
	end

	def create
		@empresa = Empresa.new(params[:empresa])
		respond_with @empresa
	end

	def show

	end
end
