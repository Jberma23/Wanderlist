class Trip < ApplicationRecord
    belongs_to :user 
    has_many :flights 
    has_many :countries, through: :flights 
    accepts_nested_attributes_for :flights
    accepts_nested_attributes_for :user 
end
