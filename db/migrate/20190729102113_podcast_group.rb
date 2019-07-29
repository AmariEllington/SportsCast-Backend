class PodcastGroup < ActiveRecord::Migration[5.2]
  def change
    create_table :podcast_groups do |t|
      t.string :name
    end
  end
end
