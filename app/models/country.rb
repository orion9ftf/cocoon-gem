class Country < ApplicationRecord
  has_many :social_network, as: :sociable
  accepts_nested_attributes_for :social_network, reject_if: :all_blank, allow_destroy: true

  has_one_attached :icon
  has_one_attached :flag
end
