require 'minitest/autorun'
require_relative '../temperature/temperature'

class TemperatureTest < Minitest::Test

  def test_fahrenheit_to_fahrenheit
    assert_equal 100, Temperature.new(100, 'fahrenheit').to_fahrenheit
  end

  def test_celsius_to_fahrenheit
    assert_equal 212, Temperature.new(100, 'celsius').to_fahrenheit
  end

  def test_kelvin_to_fahrenheit=
    assert_equal 23, Temperature.new(268.15, 'kelvin').to_fahrenheit
  end

  def test_kelvin_to_celsius
    assert_equal 5, Temperature.new(278.15, 'kelvin').to_celsius
  end

  def test_fahrenheit_to_celsius
    assert_equal 37, Temperature.new(100, 'fahrenheit').to_celsius
  end

  def test_fahrenheit_to_kelvin
    assert_equal 268.15, Temperature.new(23, 'fahrenheit').to_kelvin
  end

  def test_celcius_to_kelvin
    assert_equal 485.15, Temperature.new(212, 'celsius').to_kelvin
  end
end

