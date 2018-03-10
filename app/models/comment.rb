class Comment < ApplicationRecord
  # Direct associations

  has_one    :forecast

  belongs_to :user

  # Indirect associations

  # Validations

end
