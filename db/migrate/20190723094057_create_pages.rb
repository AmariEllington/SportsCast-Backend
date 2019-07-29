class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :twitter
      t.string :youtube

      
    end
  end
end
