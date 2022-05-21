class User < ApplicationRecord
  # Users can only log in
  devise :database_authenticatable, :validatable

  belongs_to :company

  def name
    email.split('@').first.capitalize
  end
end
