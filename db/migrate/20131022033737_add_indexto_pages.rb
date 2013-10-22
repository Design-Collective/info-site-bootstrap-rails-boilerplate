class AddIndextoPages < ActiveRecord::Migration
  def change
  	add_index :pages, :slug
  end
end
