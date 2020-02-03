class HourlyProduction < ApplicationRecord
    belongs_to :onduleur

    require 'csv'
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            HourlyProduction.create!(
                identifier: row[0],
                date_time: row[1],
                energy: row[2],
                day: Date.parse(row[1].to_s)
            )
        end
    end

end