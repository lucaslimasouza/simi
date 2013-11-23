class ChangeTypeNumeroLinhaAtFuncionarios < ActiveRecord::Migration
  def change
  		change_column :funcionarios, :numero_linha, :string
  end
end
