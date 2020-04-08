class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :coment

      t.timestamps
    end
  end
end
