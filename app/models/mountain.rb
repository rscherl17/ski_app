class Mountain < ApplicationRecord
  # Direct associations

  has_many   :runs,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
