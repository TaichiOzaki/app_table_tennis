class CreatePracticeContents < ActiveRecord::Migration[7.0]
  def change
    create_table :practice_contents do |t|
      t.integer :posts_id
      t.integer :practice_history_id

      t.timestamps
    end
  end
end
