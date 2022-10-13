class CreateTrashes < ActiveRecord::Migration[7.0]
  def change
    create_table :trashes do |t|
      t.string :description
      t.string :image
      t.integer :lattitude
      t.integer :longitude
      t.integer :user_id

      t.timestamps
    end
  end
end
