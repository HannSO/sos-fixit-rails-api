class RemoveLatLngFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :latitude
    remove_column :users, :longitude
  end
end
