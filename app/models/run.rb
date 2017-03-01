class Run < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :mountain

  # Indirect associations

  # Validations

end
