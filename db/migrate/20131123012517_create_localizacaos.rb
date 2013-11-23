class CreateLocalizacaos < ActiveRecord::Migration
  def change
    create_table :localizacaos do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
