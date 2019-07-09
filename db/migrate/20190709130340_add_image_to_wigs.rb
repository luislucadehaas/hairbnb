class AddImageToWigs < ActiveRecord::Migration[5.2]
  def change
    add_column :wigs, :image, :string
  end
end
