class Forecast < ApplicationRecord
  # Direct associations

  belongs_to :seasonality

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :dc_in_conv, :numericality => { :less_than => 1, :greater_than => 0 }

  validates :growth, :numericality => { :less_than => 1, :greater_than => -1 }

  validates :intl_in_53, :numericality => { :less_than => 1, :greater_than => 0 }

end
