class CreateUserPages < ActiveRecord::Migration[5.2]
  def change
    create_table :user_pages do |t|
      t.integer :user_id
      t.integer :page_id
    end
  end
end
