class AddBalloonToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :content1, :text
    add_column :posts, :link1, :string
    add_column :posts, :img1, :string
    add_column :posts, :content2, :text
    add_column :posts, :link2, :string
    add_column :posts, :img2, :string
    add_column :posts, :content3, :text
    add_column :posts, :link3, :string
    add_column :posts, :img3, :string
    add_column :posts, :content4, :text
    add_column :posts, :link4, :string
    add_column :posts, :img4, :string
  end
end
