class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :mountain_id

      t.timestamps

    end
  end
end
