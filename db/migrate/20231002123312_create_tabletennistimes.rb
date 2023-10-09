class CreateTabletennistimes < ActiveRecord::Migration[7.0]
  def change
    create_table :tabletennistimes do |t|
      t.date :date, 
      t.integer :hour, 
      t.integer :minutes, 

      t.timestamps
    end
  end
end
