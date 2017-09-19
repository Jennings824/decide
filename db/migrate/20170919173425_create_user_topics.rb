class CreateUserTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :user_topics do |t|
      t.integer :topic_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
