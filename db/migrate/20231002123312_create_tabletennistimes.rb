class CreateTabletennistimes < ActiveRecord::Migration[7.0]
  def change
    create_table :tabletennistimes do |t|
      t.date :date, null: false
      t.integer :hour, null: false
      t.integer :minutes, null: false

      t.timestamps
    end
  end
end
