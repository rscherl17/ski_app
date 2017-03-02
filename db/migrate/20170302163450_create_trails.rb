class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.integer :mountain_id

      t.timestamps

    end
  end
end
