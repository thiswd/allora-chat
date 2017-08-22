class AddCoordinatesToBalloons < ActiveRecord::Migration[5.1]
  def change
    add_column :balloons, :latitude, :float
    add_column :balloons, :longitude, :float
    add_column :balloons, :address, :string
  end
end
