class AddForeignKeyCityToLocations < ActiveRecord::Migration
  def change
    add_foreign_key :locations, :cities
  end
end
