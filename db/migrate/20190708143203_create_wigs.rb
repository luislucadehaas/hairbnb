class CreateWigs < ActiveRecord::Migration[5.2]
  def change
    create_table :wigs do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :color
      t.string :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
