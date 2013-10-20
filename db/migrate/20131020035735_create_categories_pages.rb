class CreateCategoriesPages < ActiveRecord::Migration
  def change
    create_table :categories_pages do |t|
      t.references :page
      t.references :category
    end
  end
end
