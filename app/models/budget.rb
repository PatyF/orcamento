class Budget < ActiveRecord::Base
  validates :user_id, :revenue, :expense, :date, presence: true
  belongs_to :user
end
