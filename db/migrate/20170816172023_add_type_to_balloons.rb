class AddTypeToBalloons < ActiveRecord::Migration[5.1]
  def change
    add_column :balloons, :type, :string
  end
end
