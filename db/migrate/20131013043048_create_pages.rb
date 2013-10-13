class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :meta_title
      t.string :meta_description
      t.string :page_title
      t.string :header_image
      t.text :body

      t.timestamps
    end
  end
end
