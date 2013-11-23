class AddEquipeToFuncionarios < ActiveRecord::Migration
  def change
  	add_reference :funcionarios, :equipe, index: true
  end
end
