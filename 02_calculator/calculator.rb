#write your code here
def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(numbers)
  numbers.reduce(0) { |sum, n| sum + n }
end

def multiply(n1, *n2)
  [n1, *n2].reduce(1) { |total, num| total * num }
end

def power(n1, n2)
  n1**n2
end

def factorial(n)
  (1..n).to_a.reduce(1) { |total, num| total * num }
end
