class Posts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :add, :integer
  end
end
