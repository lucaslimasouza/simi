require 'spec_helper'

describe Funcionario do
  
  context "atributos" do
  	it { should respond_to(:nome) }
  	it { should respond_to(:numero_linha) }
  end

  context "validacao" do
  	it { should validate_presence_of(:nome) }
  	it { should validate_presence_of(:numero_linha) }
  end

  context "associacao" do
  	it { should have_many(:localizacaos) }
  end
end
