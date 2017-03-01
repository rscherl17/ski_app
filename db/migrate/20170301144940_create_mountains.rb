class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :location
      t.string :vertical_feet
      t.string :skiable_acres
      t.string :number_of_runs

      t.timestamps

    end
  end
end
