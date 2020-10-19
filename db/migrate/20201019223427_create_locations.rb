class CreateLocations < ActiveRecord::Migration[6.0]
  def up
    create_table :locations do |t|
      t.string :title
      t.string :address
      t.string :location
      t.timestamps
    end
  end

  def down
    drop_table :locations
  end
end
