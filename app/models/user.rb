class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :disciplinas
  validates_uniqueness_of :username
  validates :username, :avatar, presence: true, allow_blank: false
end
