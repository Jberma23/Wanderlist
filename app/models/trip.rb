class Trip < ApplicationRecord
    belongs_to :user 
    has_many :flights 
    has_many :countries, through: :flights 
end
