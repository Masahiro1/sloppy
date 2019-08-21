class Channel < ApplicationRecord
  has_many :user_channels, dependent: :destroy
  has_many :users, through: :user_channels

  belongs_to :workspace
end
