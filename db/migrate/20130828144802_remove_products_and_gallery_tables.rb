class RemoveProductsAndGalleryTables < ActiveRecord::Migration
  def change
  	drop_table :products
  	drop_table :galleries
  	drop_table :photos
  end
end
