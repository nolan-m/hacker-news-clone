class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :content, :text
      t.column :title, :string
      t.column :link, :string

      t.timestamps
    end
    create_table :votes do |t|
      t.column :post_id, :int
      t.column :score, :boolean

      t.timestamps
    end
    create_table :comments do |t|
      t.column :content, :text
      t.column :post_id, :int

      t.timestamps
    end
  end
end
