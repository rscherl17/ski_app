class Comment < ApplicationRecord
  # Direct associations

  belongs_to :run

  belongs_to :user

  # Indirect associations

  # Validations

end
