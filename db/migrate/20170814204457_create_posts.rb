class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :headline
      t.string :option_more
      t.string :option_next
      t.string :post_img
      t.references :edition, foreign_key: true

      t.timestamps
    end
  end
end
