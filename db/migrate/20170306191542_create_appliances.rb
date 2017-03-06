class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
