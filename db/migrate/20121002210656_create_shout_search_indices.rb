class CreateShoutSearchIndices < ActiveRecord::Migration
  def change
    create_table :shout_search_indices do |t|
      t.belongs_to :shout
      t.string :shout_index

      t.timestamps
    end
    add_index :shout_search_indices, :shout_id
  end
end
