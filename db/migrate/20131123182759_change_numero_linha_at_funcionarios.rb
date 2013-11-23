class ChangeNumeroLinhaAtFuncionarios < ActiveRecord::Migration
  def change
  	change_column :funcionarios, :numero_linha, :float
  end
end
