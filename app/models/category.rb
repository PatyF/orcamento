class Category < ActiveRecord::Base
    validates :description, :user_id, presence: true
    belongs_to :user
    has_many :movements
end
