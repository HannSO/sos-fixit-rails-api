class Reset < ActiveRecord::Migration

  def change

    create_table :skills do |t|
      t.string :name

      t.timestamps null: false
    end

    create_table :users_skills do |t|

      t.timestamps null: false
    end

    add_reference :users_skills, :user, index: true, foreign_key: true

    add_reference :users_skills, :skill, index: true, foreign_key: true

  end

end
