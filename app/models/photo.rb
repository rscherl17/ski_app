class Photo < ApplicationRecord
  # Direct associations

  belongs_to :mountain,
             :counter_cache => true

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
