class User < ApplicationRecord
  # Users can only log in
  devise :database_authenticatable, :validatable

  belongs_to :company
end
