class CreateStatus < ActiveRecord::Migration[6.0]
  def up
    create_table :statuses do |t|
      t.integer :location_id
      t.integer :level
      t.timestamps
    end
  end

  def down
    drop_table :statuses
  end
end
