class AddScore < ActiveRecord::Migration
  def change
    add_column :posts, :total_votes, :integer
  end
end
