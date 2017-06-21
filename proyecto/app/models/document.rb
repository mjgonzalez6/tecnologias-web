class Document < ApplicationRecord
  def to_s
    return title
  end

  

  validates :title, length: {minimum: 10, maximum: 50}, presence: true, uniqueness: true
  validates :text, length: {minimum: 10}, presence: true
end
