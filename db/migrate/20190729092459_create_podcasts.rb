class CreatePodcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :url
      t.integer :podcast_group_id

      t.timestamps
    end
  end
end
