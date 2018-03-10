class Seasonality < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :seas_ds_40, :numericality => { :less_than => 1, :greater_than => 0 }

  validates :seas_ds_53, :numericality => { :less_than => 1, :greater_than => 0 }

end
