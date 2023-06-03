module NumericalIntegration

  #Метод левых прямоугольников
  def rectangle_method(function, a, b, n)
    h = (b - a).to_f / n #Шаг
    sum = 0.0
    (0..n).each do |i|
      x = a + i*h
      rectangle = function.call(x)
      sum += rectangle
    end
    sum *= h
    return sum
  end

  # Метод трапеций
  def trapezoidal_method(function, a, b, n)
    h = (b - a).to_f / n
    sum = 0.0
    sum += (function.call(a) + function.call(b)) / 2.0
    (1..(n-1)).each do |i|
      sum += function.call(a + i*h)
    end
    sum *= h
    return sum
  end

  # Формула Симпсона
  def simpsons_method(function, a, b, n)
    h = (b - a).to_f / n
    x = Array.new
    fx = Array.new

    (0..n).each do |i|
      x.push(a + i*h)
      fx.push(function.call(x[i]))
    end

    result = 0.0
    (0..n).each do |i|
      if i == 0 or i == n
        result += fx[i]
      elsif i % 2 != 0
        result += 4* fx[i]
      else
        result += 2 * fx[i]
      end
    end
    result = result * (h / 3)
    return result
  end

  def my_exp(x)
     return Math.exp(x)
  end

end

#p rectangle_method(method(:my_exp), 0.0, 1.0, 10000)
