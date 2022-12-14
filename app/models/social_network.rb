class SocialNetwork < ApplicationRecord
  #belongs_to :sociable, polymorphic: true, optional: true
  
  has_one_attached :icon
  has_one_attached :flag

end
