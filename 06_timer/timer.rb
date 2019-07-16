class Timer
  attr_accessor :timer, :seconds

  def seconds(second=0)
    @seconds = second
  end

  def time_string
    seconds = sprintf('%02d', @seconds % 60)
    minutes = sprintf('%02d', @seconds / 60 % 60)
    hours   = sprintf('%02d', @seconds / 60 / 60 % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

end
