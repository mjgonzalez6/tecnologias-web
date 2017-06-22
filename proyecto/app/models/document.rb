class Document < ApplicationRecord
  has_many :favourites

  def to_s
    return title
  end

  validates :title, length: {minimum: 10, maximum: 50}, presence: true, uniqueness: true
  validates :text, length: {minimum: 10}, presence: true

  def user_favourite?(person_id)
    favourite = Favourite.where(:document_id => self.id, :person_id => person_id).first
    user_favourite = false
    if favourite
      user_favourite = true
    end
    return user_favourite
  end

  def total_favourites
    Favourite.where(:document_id => self.id).count
  end

  def dislike(person_id)
    favourite = Favourite.where(:document_id => self.id, :person_id => person_id).first
    if favourite
      favourite.delete
    else
      favourite = Favourite.new(:document_id => self.id, :person_id => person_id)
      favourite.save
    end
  end
end
