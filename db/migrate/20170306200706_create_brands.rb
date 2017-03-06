class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :appliance_id

      t.timestamps null: false
    end
  end
end
