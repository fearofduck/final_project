class CycleTime < ApplicationRecord
  # Direct associations

  has_many   :forecasts,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :conv, :numericality => { :greater_than => 0 }

  validates :ct_ds_40, :numericality => { :greater_than => 0 }

  validates :ct_ds_53, :numericality => { :greater_than => 0 }

end
