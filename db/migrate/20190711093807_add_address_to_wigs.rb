class AddAddressToWigs < ActiveRecord::Migration[5.2]
  def change
    add_column :wigs, :address, :string
  end
end
