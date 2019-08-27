class Temperature

  attr_accessor :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_fahrenheit
    case @unit
    when 'fahrenheit'
      @value
    when 'celsius'
      @value * 9/5 + 32
    when 'kelvin'
      (@value - 273.15) * 9/5 + 32
    end
  end

  def to_celsius
    case @unit
    when 'fahrenheit'
      (@value - 32) * 5/9
    when 'celsius'
      @value
    when 'kelvin'
      @value - 273.15
    end
  end

  def to_kelvin
    case @unit
    when 'fahrenheit'
      (@value - 32) * 5/9 + 273.15
    when 'celsius'
      @value + 273.15
    when 'kelvin'
      @value
    end
  end
end
