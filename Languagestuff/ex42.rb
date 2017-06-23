## Animal is-a object look at the extra credit
class Animal
end

## is-a
class Dog < Animal

  def initialize(name)
    @name = name
  end
end

## is-a
class Cat < Animal

  def initialize(name)
    @name = name
  end
end

## has-a
class Person

  def initialize(name)
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor: pet
end

## is-a
class Employee < Person

  def initialize(name, salary)
    super(name)
    @salary = salary
  end

end

## has-a
end

## is-a
class Salmon < Fish
end

## is-a
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")

satan = Cat.new("Satan")

mary = Person.new("Mary")

mary.pet = Satan

frank = Employee.new("Frank", 120000)

frank.pet = rover

flipper = Fish.new()

crouse = Salmon.new()

harry = Halibut.new()
