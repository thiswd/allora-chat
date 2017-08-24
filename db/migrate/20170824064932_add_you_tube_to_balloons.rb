class AddYouTubeToBalloons < ActiveRecord::Migration[5.1]
  def change
    add_column :balloons, :youtube, :string
  end
end
