class AddSkillIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :skill, index: true, foreign_key: true
  end
end
