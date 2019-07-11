class AddCoordinatesToWigs < ActiveRecord::Migration[5.2]
  def change
    add_column :wigs, :latitude, :float
    add_column :wigs, :longitude, :float
  end
end
