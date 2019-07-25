class CreateTopicUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :topic_users do |t|
      t.integer :topic_id
      t.integer :user_id

      t.timestamps
    end

    add_index :topic_users, :topic_id
    add_index :topic_users, :user_id
  end
end
