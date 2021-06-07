class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :stories
  validates_presence_of :name
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  
end
