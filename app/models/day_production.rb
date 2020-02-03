class DayProduction < ApplicationRecord
    has_many :hourly_productions, foreign_key: 'day', class_name: 'HourlyProduction'
end
