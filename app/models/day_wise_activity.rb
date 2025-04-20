class DayWiseActivity < ApplicationRecord
    belongs_to :activity
    has_many :user_activity_progresses
end