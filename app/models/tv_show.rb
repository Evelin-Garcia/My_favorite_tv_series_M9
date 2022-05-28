class TvShow < ApplicationRecord
  belongs_to :nationality
  has_many :episodes, dependent: :destroy
  has_many :film_locations, dependent: :destroy, inverse_of: :tv_show
  accepts_nested_attributes_for :film_locations

  validates :name, presence: true
end
