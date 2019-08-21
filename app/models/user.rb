class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_workspaces, dependent: :destroy
  has_many :workspaces, through: :user_workspaces

  has_many :user_channels, dependent: :destroy
  has_many :channels, through: :user_channels
end
