class AddWeatherToBalloons < ActiveRecord::Migration[5.1]
  def change
    add_column :balloons, :weather, :string
  end
end
