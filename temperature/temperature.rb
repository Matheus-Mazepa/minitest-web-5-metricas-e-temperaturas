class Temperature

  attr_accessor :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_fahrenheit
    case @unit
    when 'f'
      @value
    when 'c'
      @value * 9/5 + 32
    when 'k'
      (@value - 273.15) * 9/5 + 32
    end
  end

  def to_celsius
    case @unit
    when 'f'
      (@value - 32) * 5/9
    when 'c'
      @value
    when 'k'
      @value - 273.15
    end
  end

  def to_kelvin
    case @unit
    when 'f'
      (@value - 32) * 5/9 + 273.15
    when 'c'
      @value + 273.15
    when 'k'
      @value
    end
  end
end
