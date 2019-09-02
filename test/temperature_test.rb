require 'minitest/autorun'
require_relative '../temperature/temperature'

class TemperatureTest < Minitest::Test
  def test_celsius_to_fahrenheit
    assert_equal 212, Temperature.new(100, 'celsius').to_fahrenheit
  end

  def test_celsius_to_fahrenheit_2
    assert_equal 392, Temperature.new(200, 'celsius').to_fahrenheit
  end

  def test_kelvin_to_fahrenheit
    assert_equal 23, Temperature.new(268.15, 'kelvin').to_fahrenheit
    end

  def test_kelvin_to_fahrenheit_2
    assert_equal 620.33, Temperature.new(600, 'kelvin').to_fahrenheit
  end

  def test_kelvin_to_celsius
    assert_equal 5, Temperature.new(278.15, 'kelvin').to_celsius
  end

  def test_kelvin_to_celsius_2
    assert_equal 1, Temperature.new(274.15, 'kelvin').to_celsius
  end

  def test_fahrenheit_to_celsius
    assert_equal 37, Temperature.new(100, 'fahrenheit').to_celsius
  end

  def test_fahrenheit_to_celsius_2
    assert_equal 10, Temperature.new(50, 'fahrenheit').to_celsius
  end

  def test_fahrenheit_to_kelvin
    assert_equal 268.15, Temperature.new(23, 'fahrenheit').to_kelvin
  end

  def test_fahrenheit_to_kelvin_2
    assert_equal 280.15, Temperature.new(46, 'fahrenheit').to_kelvin
  end

  def test_celcius_to_kelvin
    assert_equal 485.15, Temperature.new(212, 'celsius').to_kelvin
  end

  def test_celcius_to_kelvin_2
    assert_equal 665.15, Temperature.new(392, 'celsius').to_kelvin
  end
end

