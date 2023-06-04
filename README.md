## Numerical Integration

Welcome to the new 'Numerical Integration' gem! It is used for numerical integration of functions by several proposed methods:
```
1. Left rectangles method 
2. Trapezoidal method
3. Simpson's formula
```
## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add Numerical_Integration

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install Numerical_Integration
    
## Usage

To use the gem's functionality, you need to write the name of the method and add some parameters. The parameters 'a' and 'b' mean the interval on which we are integrating, and 'n' is the step of the function.
For convenience, here are the signatures of all methods:

### ▪️ Signatures:
```ruby
def rectangle_method(function, a, b, n)
def trapezoidal_method(function, a, b, n)
def simpsons_method(function, a, b, n)
```

### ▪️ Function examples:
```ruby
function = lambda { |x| 1 / x.to_f }
function = Proc.new { |x| x ** 3 }
function = Proc.new { |x| Math.sin(x) }
```

## Authors
Numerical Integration was created by a team of Ruby developers: Chekomasova Ksenia, Mochalova Ksenia, Garkusha Anastasia and Chueva Elizaveta.

## License
Numerical Integration is distributed under the MIT license. See `LICENSE` for details.

