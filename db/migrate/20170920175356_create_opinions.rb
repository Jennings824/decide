class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.integer :user_topic_id, null: false
      t.text :info, null: false
      t.timestamps
    end
  end
end
