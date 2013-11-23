require 'spec_helper'

describe Empresa do

	context "atributos" do
		it { should respond_to(:razao_social) }
		it { should respond_to(:cnpj) }
		it { should respond_to(:telefone) }
		it { should respond_to(:endereco) }
	end

	context "validacao" do
		it { should validate_presence_of(:razao_social) }
		it { should validate_presence_of(:cnpj) }
		it { should validate_presence_of(:telefone) }
		it { should validate_presence_of(:endereco) }
	end

	context "associacao" do
		it { should have_many(:equipes) }
	end
end
