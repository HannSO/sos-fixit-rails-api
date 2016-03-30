class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.integer :recipient_id
      t.integer :fixer_id

      t.timestamps null: false
    end
  end
end
