class Subscriber < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  def email
    email
  end
end
