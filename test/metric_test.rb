require 'minitest/autorun'
require_relative '../metric/metric'

class MetricTest < Minitest::Test

  def test_meters_to_meters
    assert_equal 100, Metric.new(100, 'meter').to_meter
    end

  def test_foot_to_meters
    assert_equal 106.67479427003961, Metric.new(350, 'foot').to_meter
  end

  def test_yards_to_km
    assert_equal 457.200124724194, Metric.new(500000, 'yard').to_km
  end

  def test_meters_to_km
    assert_equal 50, Metric.new(50000, 'meter').to_km
  end

  def test_km_to_foot
    assert_equal 6561.68, Metric.new(2, 'km').to_foot
    end

  def test_meters_to_foot
    assert_equal 328.1, Metric.new(100, 'meter').to_foot
  end

  def test_km_to_miles
    assert_equal 268.4897451833437, Metric.new(432, 'km').to_miles
  end

  def test_meters_to_miles
    assert_equal 1, Metric.new(1609.344, 'meter').to_miles
  end

  def test_meters_to_yard
    assert_equal 87.52000000000001, Metric.new(80, 'meter').to_yard
    end

  def test_foots_to_yards
    assert_equal 4, Metric.new(12, 'foot').to_yard
    end

  def test_centimeters_to_inch
    assert_equal 39.37, Metric.new(100, 'centimeter').to_inch
  end

  def test_yards_to_inch
    assert_equal 3600, Metric.new(100, 'yard').to_inch
    end

  def test_yards_to_centimeters
    assert_equal 9144, Metric.new(100, 'yard').to_centimeter
  end

  def test_meters_to_centimeters
    assert_equal 10000, Metric.new(100, 'meter').to_centimeter
  end
end

