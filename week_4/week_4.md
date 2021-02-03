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
**Abstraction** is a characteristic of OOP that represents how parts of a codebase can be used and reused without the need to know what is going on _internally_. You may call `.breathe` on an `Animal` object and there may be some complicated processes going on within the object such as `.diaphragm_up`, `.diaphragm_down`, `.expand_lungs` and so on, but at a higher (more abstract) level, the developer may only need to know that an `Animal` can `.breathe` and it will work just fine. Another aspect of Abstraction is the collapsing of a few related methods into one method. Perhaps you have a `Bank_Account` class with `deposit` and `withdraw` methods:
```ruby
class Bank_Account
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end  

  def withdraw(amount)
    @balance -= amount
  end
```

The `deposit` and `withdraw` methods could be replaced with a single `amend`:
```ruby
class Bank_Account
  # omitted initialize
  def amend(amount)
    @balance += amount
  end
end
```

the method can now be used as so: `account.amend(50)` or `account.amend(-50)`. The idea here is that a user interface can control the deposit/ withdraw functions and `Bank_Account` only needs to worry about `amend`ing the amount.
  
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