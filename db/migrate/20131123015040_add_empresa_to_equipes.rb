class AddEmpresaToEquipes < ActiveRecord::Migration
  def change
  	add_reference :equipes,:empresa,index: true
  end
end
