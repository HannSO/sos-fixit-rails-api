class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :users_skills do |t|

      t.timestamps null: false
    end
  end
end
