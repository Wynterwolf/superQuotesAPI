class EpisodeNumber < ApplicationRecord
    has_many: quotes
    has_many: chartacters, through :quotes
end
