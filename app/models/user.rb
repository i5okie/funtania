class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validations
  validates :email, uniqueness: true

  # available roles
  Roles = [ :admin , :default ]

  # facilitate checking of users role
  def is?( requested_role )
    self.role == requested_role.to_s
  end

end
