class Mountain < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  has_many   :runs,
             :class_name => "Trail",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
