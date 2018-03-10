class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.float :growth
      t.integer :seasonality_id
      t.integer :user_id
      t.integer :cycle_time_id
      t.float :intl_in_53
      t.float :dc_in_conv
      t.integer :comment_id

      t.timestamps

    end
  end
end
