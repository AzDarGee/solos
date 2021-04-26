class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable


  has_many :skills, dependent: :delete_all
  has_many :projects, dependent: :delete_all
  has_many :locations, dependent: :delete_all

  has_many_attached :images, :dependent => :destroy


  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true

end
