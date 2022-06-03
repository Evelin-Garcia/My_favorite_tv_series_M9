class Genre < ApplicationRecord
    has_many :genre_tv_shows, dependent: :destroy
    has_many :tv_shows, through: :genre_tv_shows
end
