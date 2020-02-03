class Onduleur < ApplicationRecord
    has_many :hourly_productions, class_name: "hourly_production", foreign_key: "indentifier"
end
