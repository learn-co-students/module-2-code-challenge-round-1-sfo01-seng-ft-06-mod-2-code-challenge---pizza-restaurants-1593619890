class Restaurant < ApplicationRecord
    has_many :restaurants_pizzas
    has_many :pizzas, through: :restaurants_pizzas
end
