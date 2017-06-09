class Person < ApplicationRecord
  def to_s
    return first_name + ' ' + last_name
  end
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, length: {minimum: 3, maximum: 30}, presence: true
  validates :last_name, length: {minimum: 3, maximum: 30}, presence: true
  validates :email, presence: true, length: { maximum: 50}, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
    message: " invalido" }
  validates :password, presence: true, length: {minimum: 8}, confirmation: true
  validates :password_confirmation, presence: true
end
