# Week 4
## Learning Outcomes:
- [ ] Review another person's code and learn from what they read
- [ ] Review another person's code and give them meaningful feedback
- [ ] Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
- [ ] Break one class into two classes that work together, while maintaining test coverage
## Other points of interest this week
- [ ] Pair programming on Oystercard challenge

## Explain Some basic OO principles and tie them to high level concerns
### Talk about:
* 4 Pillars of OOP (APIE)
    * Abstraction
    * Polymorphism
    * Inheritance
    * Encapsulation
* Cohesion and Coupling
* Forwarding
* Extract Variable, Extract Method, Extract Class techniques
* SOLID Principles

### Abstraction
**Abstraction** is a characteristic of OOP that represents how 

### Inheritance
**Inheritance** is the ability to pass on state and behaviour from one 'parent' class to a 'child' class. We may have a class like so:
```ruby
class Animal
  def initialize(name)
    @name = name
  end

  def breathe
    "#{@name} is breathing"
  end

  def eat(food)
    "#{@name} is eating #{food}"
  end
end
```
  
We may then pass on the methods defined as above to another class which can extend upon the `Animal` class with new features

```ruby
class Cat < Animal
  def meow
    "#{@name} says meow!"
  end
end

monty = Cat.new("Monty")
monty.eat("Kitty Kibble") # => Monty is eating Kitty Kibble
```

The benefit of Inheritance is that it helps greatly with the **reusability** of your code. You may recall that you had a great class before somewhere but now you want to extend upon it. You would simply need to inherit from that class to reuse it and build upon it.