class Quote < ApplicationRecord
    belongs_to: character, required: false
    belongs_to: episode, required: false
end
