class Metric

  attr_accessor :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_inch
    case @unit
    when 'inch'
      @value
    when 'centimeter'
      @value * 0.3937
    when 'foot'
      @value * 12.0
    when 'meter'
      @value *  39.37
    when 'miles'
      @value * 63360.0
    when 'yard'
      @value * 36.0
    when 'km'
      @value * 39370.1
    end
  end

  def to_centimeter
    case @unit
    when 'inch'
      @value * 2.54
    when 'centimeter'
      @value
    when 'foot'
      @value *  30.48
    when 'meter'
      @value * 100.0
    when 'miles'
      @value *  160934.4
    when 'yard'
      @value * 91.44
    when 'km'
      @value * 100000.0
    end
  end

  def to_foot
    case @unit
    when 'inch'
      @value / 12.0
    when 'centimeter'
      @value * 30.48
    when 'foot'
      @value
    when 'meter'
      @value * 3.281
    when 'miles'
      @value *  5280
    when 'yard'
      @value * 3.0
    when 'km'
      @value * 3280.84
    end
  end

  def to_meter
    case @unit
    when 'inch'
      @value / 39.37
    when 'centimeter'
      @value / 100
    when 'foot'
      @value / 3.281
    when 'meter'
      @value
    when 'miles'
      @value *  1609.344
    when 'yard'
      @value / 1.094
    when 'km'
      @value * 1000.0
    end
  end

  def to_miles
    case @unit
    when 'inch'
      @value / 63360.0
    when 'centimeter'
      @value / 160934.4
    when 'foot'
      @value / 5280.0
    when 'meter'
      @value / 1609.344
    when 'miles'
      @value
    when 'yard'
      @value / 1760.0
    when 'km'
      @value / 1.609
    end
  end

  def to_yard
    case @unit
    when 'inch'
      @value / 36.0
    when 'centimeter'
      @value / 91.44
    when 'foot'
      @value / 3.0
    when 'meter'
      @value * 1.094
    when 'miles'
      @value * 1760.0
    when 'yard'
      @value
    when 'km'
      @value * 1093.613
    end
    end

  def to_km
    case @unit
    when 'inch'
      @value / 39370.079
    when 'centimeter'
      @value / 100000.0
    when 'foot'
      @value / 3280.84
    when 'meter'
      @value / 1000.0
    when 'miles'
      @value * 1.609
    when 'yard'
      @value / 1093.613
    when 'km'
      @value
    end
  end
end
