require 'spec_helper'

describe EmpresasController do

	describe "GET #index" do

		it "rederiza index template" do
			get :index
			expect(response).to render_template("index")
		end

		it "retorna @empresas" do
			empresas = Empresa.all
			get :index
			expect(assigns(:empresas)).to eq(empresas)
		end

	end

	describe "GET #new" do

		it "rederiza new template" do
			get :new
			expect(response).to render_template("new")
		end	

		it "retorn @empresa" do
			get :new
			expect(assigns(:empresa)).to be_a_new(Empresa)
		end
	end

	describe "POST create" do
		it "rederiza show template" do
			post :create
			expect(response).should redirect_to empresa_path
		end

	end
end
