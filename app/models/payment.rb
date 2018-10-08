class Payment < ApplicationRecord
  belongs_to :user
  has_many :reconciliations
  has_many :receipts, through: :reconciliations
end
