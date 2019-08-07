class Tag < ApplicationRecord
def self.search(term)
  where(“city ILIKE ?”, “%#{term}%”)
end
end
