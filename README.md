This is a sample RPN Calculator in Ruby.  The goal is to demonstrate current best practices in Ruby development.

# FEATURES
- Four standard arithmetic operators
- Parses negative and decimal numbers
- Gives meaningful errors for invalid inputs
- Exits on 'q' or EOF (^D).


# INSTALLATION
```
$ git clone https://github.com/drernie/rpn-calculator-drernie.git
$ cd rpn-calculator-drernie
```
# EXECUTION
```
$ ruby rpn_calc.rb
```
# USAGE
```
    > -3
    -3
    > -2
    -2
    > *
    6
    > 5
    5
    > +
    11
```

# TESTING
```
$ gem install rspec
$ rspec spec/*
```
