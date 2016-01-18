class Movement < ActiveRecord::Base
  validates :description, :user_id, :category_id, :account_id, :date, :value, :kind, presence: true
  belongs_to :user
  belongs_to :category
  belongs_to :account

end
