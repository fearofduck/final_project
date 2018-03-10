class Forecast < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :intl_in_53, :numericality => { :less_than => 1, :greater_than => 0 }

end
