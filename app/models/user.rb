class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true

  def to_token_payload
    # TODO: add token params in the hash below
    { sub: id, email: email, name: name, is_admin: admin } # email, name and is_admin are custom params
  end
end
