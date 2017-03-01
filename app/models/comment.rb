class Comment < ApplicationRecord
  # Direct associations

  belongs_to :run,
             :class_name => "Trail",
             :foreign_key => "trail_id"

  belongs_to :user

  # Indirect associations

  # Validations

end
