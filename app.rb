# Local variable
age = 30
p age

# Instance variable
class MyCustomClass
  def initialize
    @a = 2
  end

  def print_instance
    puts "O valor de @a é #{@a}"
  end
end

p MyCustomClass.new.instance_variable_get(:@a)
MyCustomClass.new.print_instance

# Class variable

class MyCustomClass
  @@hello = 'World'

  def print_instance
    puts "O valor de @@hello é #{@@hello}"
  end

  def self.print_class
    puts "O valor de @@hello é #{@@hello}"
  end
end

MyCustomClass.new.print_instance
MyCustomClass.print_class

class Counter
  @@count = 0

  def initialize
    @@count += 1
  end

  def print_count
    puts "O valor de @@count é #{@@count}"
  end
end

Counter.new.print_count

Counter.new.print_count

Counter.new.print_count

# Global variable

$redis = {}

p $redis

# Constant Variable

Alphabect = ('a'..'z').to_a

p Alphabect

Alphabect += ['ç']

p Alphabect
