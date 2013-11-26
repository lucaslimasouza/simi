class ChangeTypeLatitudeLongitudeStringAtLocalizacao < ActiveRecord::Migration
  def change
  	change_column :localizacaos, :latitude, :string
  	change_column :localizacaos, :longitude, :string
  end
end
