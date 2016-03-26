class AddLongitudeLatitudeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :string
    add_column :users, :longitude, :string
  end
end
