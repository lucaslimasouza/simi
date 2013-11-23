class AddFuncionarioToLocalizacaos < ActiveRecord::Migration
  def change
  	add_reference :localizacaos, :funcionario, index: true
  end
end
