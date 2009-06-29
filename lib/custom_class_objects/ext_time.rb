class Time
  def to_date
    return Date.new(self.year, self.month, self.day)
  end

  def before_year(year_count = 1)
    Time.mktime(self.year - year_count,
                self.month, self.day, self.hour, self.min, self.sec)
  end
end
