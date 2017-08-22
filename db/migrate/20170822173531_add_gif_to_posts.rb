class AddGifToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post_gif, :string
  end
end
