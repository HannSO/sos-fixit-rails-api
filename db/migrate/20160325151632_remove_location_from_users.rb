class RemoveLocationFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :location
  end
end
