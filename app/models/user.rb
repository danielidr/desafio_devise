class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates_presence_of :name
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          
end