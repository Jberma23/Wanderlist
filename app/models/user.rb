class User < ApplicationRecord
    has_many :trips
    has_many :countries, through: :trips

end
