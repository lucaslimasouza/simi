require 'spec_helper'

describe Localizacao do
  
  context "atributos" do
  	it { should respond_to(:latitude) }
  	it { should respond_to(:longitude) }
  end

  context "validacao" do
  	it { should validate_presence_of(:latitude) }
  	it { should validate_presence_of(:longitude) }
  end

  context "associacao" do
  	it {should belong_to(:funcionario) }
  end

end
