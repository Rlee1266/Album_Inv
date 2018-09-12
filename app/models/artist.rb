class Artist < ApplicationRecord
  has_and_belongs_to_many :album_invs
end
