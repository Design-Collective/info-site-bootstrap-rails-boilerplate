class CreatePageSliders < ActiveRecord::Migration
  def change
    create_table :page_sliders do |t|
    	t.belongs_to :page, index: true
      t.string :carousel_bg_img
      t.string :carousel_title
      t.text :carousel_content

      t.timestamps
    end
  end
end
