class Seasonality < ApplicationRecord
  # Direct associations

  has_many   :forecasts,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :conv, :numericality => { :less_than => 1, :greater_than => 0 }

  validates :seas_ds_40, :numericality => { :less_than => 1, :greater_than => 0 }

  validates :seas_ds_53, :numericality => { :less_than => 1, :greater_than => 0 }

end
