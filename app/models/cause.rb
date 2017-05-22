class Cause < ApplicationRecord
  scope :all_terms, -> { pluck(:term).uniq }
end
