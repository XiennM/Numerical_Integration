# frozen_string_literal: true

require "./test_helper"
require "Numerical_Integration"

class TestRectangleMethod < Minitest::Test
  include NumericalIntegration

#test for rectangle_method
    def test_rectangle
      assert_in_delta(6.0, rectangle_method(lambda { |x| 2 * x + 1 }, 0, 2, 100000),0.001)
      #assert_in_delta(Math.exp(1) - Math.exp(0), rectangle_method(method(:my_exp), 0.0, 1.0, 10000), 0.01)
      p "Test1.1 passed!"
    end

    def test_integration
        assert_in_delta(Math.exp(1) - Math.exp(0), rectangle_method(method(:my_exp), 0.0, 1.0, 10000), 0.01)
        p "Test1.2 passed!"
    end

    def my_exp(x)
        return Math.exp(x)
    end

#test for trapezoidal_method
    def test_trapezoidal_method_simple
      f = Proc.new { |x| x ** 2 }
      result = trapezoidal_method(f, 0, 1, 100)
      assert_in_delta result, 0.3333, 0.0001
      p "Test2.1 passed!"
    end

    def test_trapezoidal_method_different_limits
      f = Proc.new { |x| Math.sin(x) }
      result = trapezoidal_method(f, 0, Math::PI/2, 1000)
      assert_in_delta result, 0.9999, 0.0001
      p "Test2.2 passed!"
    end

    def test_trapezoidal_method_more_partitions
      f = Proc.new { |x| x ** 3 }
      result = trapezoidal_method(f, 0, 1, 100000)
      assert_in_delta result, 0.2500, 0.0001
      p "Test2.3 passed!"
    end

#test for simpsons_method
    def test_simpsons_method2
      function = lambda { |x| 1 / x.to_f }
      assert_in_delta(Math.log(3), simpsons_method(function, 1, 3, 6), 0.001)
      p "Test3 passed!"
    end

end
