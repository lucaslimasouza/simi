class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.integer :numero_linha

      t.timestamps
    end
  end
end
