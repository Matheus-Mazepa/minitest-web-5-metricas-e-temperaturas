require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require_relative '../metric/metric'

class MetricTest < Minitest::Test
  def test_foot_to_meters
    assert_equal 106.67479427003961, Metric.new(350, 'foot').to_meter
  end

  def test_foot_to_meters_2
    assert_equal 122.52362084730265, Metric.new(402, 'foot').to_meter
  end

  def test_yards_to_meters
    assert_equal  79.52468007312613, Metric.new(87, 'yard').to_meter
  end

  def test_yards_to_meters_2
    assert_equal  82.26691042047531, Metric.new(90, 'yard').to_meter
  end

  def test_km_to_meters
    assert_equal  1_000_000, Metric.new(1000, 'km').to_meter
  end

  def test_km_to_meters_2
    assert_equal  2_000_000, Metric.new(2000, 'km').to_meter
  end

  def test_miles_to_meters
    assert_equal  2_574_950.4, Metric.new(1600, 'miles').to_meter
  end

  def test_miles_to_meters_2
    assert_equal  5_164_384.896, Metric.new(3209, 'miles').to_meter
  end

  def test_inches_to_meters
    assert_equal  100, Metric.new(3937, 'inch').to_meter
  end

  def test_inches_to_meters_2
    assert_equal  200, Metric.new(7874, 'inch').to_meter
  end

  def test_centimeters_to_meters
    assert_equal  10, Metric.new(1000, 'centimeter').to_meter
  end

  def test_centimeters_to_meters_2
    assert_equal  35, Metric.new(3500, 'centimeter').to_meter
  end

  def test_yards_to_km
    assert_equal 457.200124724194, Metric.new(500_000, 'yard').to_km
  end

  def test_yards_to_km_2
    assert_equal 228.600062362097, Metric.new(250_000, 'yard').to_km
  end

  def test_foot_to_km
    assert_equal 5, Metric.new(16_404.2, 'foot').to_km
  end

  def test_foot_to_km_2
    assert_equal 10, Metric.new(32_808.4, 'foot').to_km
  end

  def test_miles_to_km
    assert_equal 257.44, Metric.new(160, 'miles').to_km
  end

  def test_inch_to_km
    assert_equal 40.639999731776, Metric.new(1_600_000, 'inch').to_km
  end

  def test_meters_to_km
    assert_equal 50, Metric.new(50_000, 'meter').to_km
  end

  def test_centimeters_to_km
    assert_equal 1, Metric.new(100_000, 'centimeter').to_km
  end

  def test_km_to_foot
    assert_equal 6561.68, Metric.new(2, 'km').to_foot
  end

  def test_centimeters_to_foot
    assert_equal 1066.8, Metric.new(35, 'centimeter').to_foot
  end

  def test_meters_to_foot
    assert_equal 328.1, Metric.new(100, 'meter').to_foot
  end

  def test_inch_to_foot
    assert_equal 10, Metric.new(120, 'inch').to_foot
  end

  def test_miles_to_foot
    assert_equal 10_560, Metric.new(2, 'miles').to_foot
  end

  def test_yard_to_foot
    assert_equal 60, Metric.new(20, 'yard').to_foot
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

  def test_km_to_yards
    assert_equal 1093.613, Metric.new(1, 'km').to_yard
  end

  def test_meters_to_yards
    assert_equal 1.094, Metric.new(1, 'meter').to_yard
  end

  def test_centimeters_to_yards
    assert_equal 100, Metric.new(9144, 'centimeter').to_yard
  end

  def test_inch_to_yards
    assert_equal 100, Metric.new(3600, 'inch').to_yard
  end

  def test_centimeters_to_inch
    assert_equal 39.37, Metric.new(100, 'centimeter').to_inch
  end

  def test_yards_to_inch
    assert_equal 3600, Metric.new(100, 'yard').to_inch
  end

  def test_meters_to_inch
    assert_equal 39_999.92, Metric.new(1016, 'meter').to_inch
  end

  def test_km_to_inch
    assert_equal 78_740.2, Metric.new(2, 'km').to_inch
  end

  def test_foots_to_inch
    assert_equal 240, Metric.new(20, 'foot').to_inch
  end

  def test_miles_to_inch
    assert_equal 1_267_200, Metric.new(20, 'miles').to_inch
  end

  def test_yards_to_centimeters
    assert_equal 9144, Metric.new(100, 'yard').to_centimeter
  end

  def test_yards_to_centimeters_2
    assert_equal 18_288, Metric.new(200, 'yard').to_centimeter
  end

  def test_meters_to_centimeters
    assert_equal 10_000, Metric.new(100, 'meter').to_centimeter
  end

  def test_meters_to_centimeters_2
    assert_equal 20_000, Metric.new(200, 'meter').to_centimeter
  end

  def test_km_to_centimeters
    assert_equal 100_000, Metric.new(1, 'km').to_centimeter
  end

  def test_km_to_centimeters_2
    assert_equal 200_000, Metric.new(2, 'km').to_centimeter
  end

  def test_foot_to_centimeters
    assert_equal 3048, Metric.new(100, 'foot').to_centimeter
  end

  def test_foot_to_centimeters_2
    assert_equal 9144, Metric.new(300, 'foot').to_centimeter
  end

  def test_yard_to_centimeters
    assert_equal 9144, Metric.new(100, 'yard').to_centimeter
  end

  def test_yard_to_centimeters_2
    assert_equal 18_288, Metric.new(200, 'yard').to_centimeter
  end

  def test_inches_to_centimeters
    assert_equal 254, Metric.new(100, 'inch').to_centimeter
  end

  def test_inches_to_centimeters_2
    assert_equal 508, Metric.new(200, 'inch').to_centimeter
  end
end
