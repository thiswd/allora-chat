class CreateReadPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :read_posts do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
