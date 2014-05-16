class User < ActiveRecord::Base
  # Remember to create a migration!

  validates :email, format: {with: /\w+@\w+.\w{2}/}
  validates :email, uniqueness: true
  validates :password_hash, presence: true
  validates :password_hash, confirmation: true
  validates :password_hash_confirmation, presence: true

  has_many :games
  has_many :decks, through: :games
end
