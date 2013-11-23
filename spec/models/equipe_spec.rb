require 'spec_helper'

describe Equipe do
  
  context "atributos" do
  	it { should respond_to(:nome) }
  end

  context "validacao" do
  	it { should validate_presence_of(:nome) }
  end

  context "associacao" do
  	it { should belong_to(:empresa) }
  	it { should have_many(:funcionarios) }
  end

end
