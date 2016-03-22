class AddUserIdToUsersSkills < ActiveRecord::Migration
  def change
    add_reference :users_skills, :user, index: true, foreign_key: true
  end
end
