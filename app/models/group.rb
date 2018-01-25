class Group < ApplicationRecord
  has_many :users, inverse_of: :group
  accepts_nested_attributes_for :users, reject_if: :all_blank, allow_destroy: true
end
