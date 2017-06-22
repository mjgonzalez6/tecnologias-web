class Favourite < ApplicationRecord
  belongs_to :person
  belongs_to :document
end
