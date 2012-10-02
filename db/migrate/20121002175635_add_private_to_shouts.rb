class AddPrivateToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :private, :boolean, default: false
  end
end
