class RemoveSkillIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :skill_id, :string
  end
end
