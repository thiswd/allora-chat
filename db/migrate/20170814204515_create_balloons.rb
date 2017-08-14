class CreateBalloons < ActiveRecord::Migration[5.1]
  def change
    create_table :balloons do |t|
      t.string :content
      t.string :link
      t.string :balloon_img
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
