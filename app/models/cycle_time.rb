class CycleTime < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :ct_ds_53, :numericality => { :greater_than => 0 }

end
