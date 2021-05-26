class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable


  has_many :skills, dependent: :delete_all
  has_many :projects, dependent: :delete_all
  has_many :locations, dependent: :delete_all

  has_one_attached :avatar, service: :amazon, :dependent => :destroy


  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true

  def thumbnail
      return self.avatar.variant(resize: '50x50!').processed
  end
    
end
