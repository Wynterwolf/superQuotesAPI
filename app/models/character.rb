class Character < ApplicationRecord
    has_many: quotes
    has_many: episodes_numbers, through :quotes
end
