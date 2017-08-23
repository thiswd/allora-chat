class AddUrlImgToEditions < ActiveRecord::Migration[5.1]
  def change
    add_column :editions, :greeting_gif, :string
    add_column :editions, :farewell_gif, :string
  end
end
