class User < ActiveRecord::Base
  validates :name, :password, presence: true
  has_many :categories
  has_many :accounts
end
