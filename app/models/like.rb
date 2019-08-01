class Like < ApplicationRecord
    belongs_to :user
    has_many :posts, through: :users
    accepts_nested_attributes_for :user
end
