class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|
      t.string :title, null: false, limit: 100
      t.string :body

      t.timestamps
    end
  end
end
