class Suggestion < ApplicationRecord
  

  belongs_to :document
  belongs_to :person

  validates :document, presence: true
  validates :person, presence: true
  validates :text, length: {maximum: 500}, presence: true
  validates :status, presence: true
end
