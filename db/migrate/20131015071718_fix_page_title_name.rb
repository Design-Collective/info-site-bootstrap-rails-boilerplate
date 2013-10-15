class FixPageTitleName < ActiveRecord::Migration
  def change
    rename_column :pages, :page_title, :title
  end
end
