class CreateVideoShouts < ActiveRecord::Migration
  def change
    create_table :video_shouts do |t|
      t.string :url

      t.timestamps
    end
  end
end
