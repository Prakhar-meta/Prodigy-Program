class Activity < ApplicationRecord
    belongs_to :category
    has_many :day_wise_activities
end