class AddSkillIdToUsersSkills < ActiveRecord::Migration
  def change
    add_reference :users_skills, :skill, index: true, foreign_key: true
  end
end
