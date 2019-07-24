class DropUserPages < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_pages
  end
end
