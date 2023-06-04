## Numeric Integration

Welcome to the new 'Numeric Integration' gem! It is used for numerical integration of functions by several proposed methods:
```
1. Left rectangles method 
2. Trapezoidal method
3. Simpson's formula
```
## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add currency_converter

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install currency_converter
    
## Usage

To use the gem's functionality, you need to write the name of the method and add some parameters.
For convenience, here are the signatures of all methods:
```ruby
def rectangle_method(function, a, b, n)
def trapezoidal_method(function, a, b, n)
def simpsons_method(function, a, b, n)
```

Function examples:
```ruby
function = lambda { |x| 1 / x.to_f }
function = Proc.new { |x| x ** 3 }
function = Proc.new { |x| Math.sin(x) }
```

