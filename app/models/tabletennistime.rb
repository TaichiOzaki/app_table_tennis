class Tabletennistime < ApplicationRecord

    def self.total_time_all
        total_minutes = sum("hour * 60 + minutes")
        hour_result = total_minutes / 60
        minutes_result = total_minutes % 60
        "#{hour_result}時間#{minutes_result}分"
    end

    def self.total_time_month
        one_month_ago = 1.month.ago
        total_minutes = where("date >= ?", one_month_ago).sum("hour * 60 + minutes")
        hours = total_minutes / 60
        minutes = total_minutes % 60
        "#{hours}時間#{minutes}分"
    end
    
    def self.total_time_week
        one_week_ago = 1.week.ago
        total_minutes = where("date >= ?", one_week_ago).sum("hour * 60 + minutes")
        hours = total_minutes / 60
        minutes = total_minutes % 60
        "#{hours}時間#{minutes}分"
    end
    




   
end
