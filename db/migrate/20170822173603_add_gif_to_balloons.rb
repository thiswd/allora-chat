class AddGifToBalloons < ActiveRecord::Migration[5.1]
  def change
    add_column :balloons, :balloon_gif, :string
  end
end
