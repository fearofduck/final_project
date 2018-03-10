class AddForecastCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :forecasts_count, :integer
  end
end
