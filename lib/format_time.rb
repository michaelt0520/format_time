require "format_time/version"

module FormatTime
  include ActionView::Helpers::DateHelper

  class Error < StandardError; end
  # Your code goes here...

  def format_relative_time(time)
    distance_of_time_in_words_to_now(time, include_seconds: true)
  end

  def format_absolute_time(time)
    Time.current.year == time.year ? in_year(time) : prevous_year(time)
  end

  private

  def in_year(time)
    if time.today?
      format_relative_time(time)
    elsif time == Date.yesterday
      I18n.l(time, format: :yesterday)
    elsif time.to_date.cweek == Date.current.cweek
      I18n.l(time, format: :in_week)
    else
      I18n.l(time, format: :normal)
    end
  end

  def prevous_year(time)
    I18n.l(time, format: :prevous_year)
  end
end
