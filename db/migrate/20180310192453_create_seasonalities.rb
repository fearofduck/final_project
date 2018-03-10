class CreateSeasonalities < ActiveRecord::Migration
  def change
    create_table :seasonalities do |t|
      t.float :seas_ds_40
      t.float :seas_ds_53
      t.float :conv
      t.string :name

      t.timestamps

    end
  end
end
