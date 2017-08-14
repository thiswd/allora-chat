class CreateEditions < ActiveRecord::Migration[5.1]
  def change
    create_table :editions do |t|
      t.datetime :date
      t.string :greeting
      t.string :farewell
      t.string :greeting_img
      t.string :farewell_img
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
