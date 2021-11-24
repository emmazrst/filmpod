class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :submissions
  has_many :comments
  has_many :tasks
  has_many :grants
  has_many :DepartmentsUsers
  has_many :films, through: :grants

  def full_name
    "#{first_name} #{last_name}"
  end

  def user_skills
    "#{skills}"
  end
end
