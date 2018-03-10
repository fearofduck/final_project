class Forecast < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :dc_in_conv, :numericality => { :less_than => 1, :greater_than => 0 }

  validates :growth, :numericality => { :less_than => 1, :greater_than => -1 }

  validates :intl_in_53, :numericality => { :less_than => 1, :greater_than => 0 }

end
