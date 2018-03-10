class CreateCycleTimes < ActiveRecord::Migration
  def change
    create_table :cycle_times do |t|
      t.float :ct_ds_40
      t.string :ct_ds_53
      t.float :conv
      t.string :scenario

      t.timestamps

    end
  end
end
