class Category < ApplicationRecord
  def to_s
    return title
  end
  validates :title, length: {minimum: 3, maximum: 30}, presence: true,  uniqueness: true
end
