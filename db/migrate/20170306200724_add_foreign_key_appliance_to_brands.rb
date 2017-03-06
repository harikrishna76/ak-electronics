class AddForeignKeyApplianceToBrands < ActiveRecord::Migration
  def change
    add_foreign_key :brands, :appliances
  end
end
