# Week 4
## Learning Outcomes:
- [ ] Review another person's code and learn from what they read
- [ ] Review another person's code and give them meaningful feedback
- [ ] Explain some basic OO principles and tie them to high level concerns (e.g. ease of change)
- [ ] Break one class into two classes that work together, while maintaining test coverage
## Other points of interest this week
- [ ] Pair programming on Oystercard challenge

## Code Review
Code reviews are the process of developers looking at other developers' code

## Explain Some basic OO principles and tie them to high level concerns
### Talk about:
- [x] 4 Pillars of OOP (APIE)
    * **Encapsulation**
    * **Abstraction**
    * **Inheritance**
    * Polymorphism (I am still not so confident on this topic)
- [x] Single Responsibility Principle (Part of the SOLID principles)
- [x] Extract Variable, Extract Method, Extract Class techniques
- [ ] Cohesion and Coupling
- [ ] Forwarding

### Encapsulation
Before talking about OOP and Encapsulation, let's talk about _procedural programming_. Having come through the first and second weeks of the bootcamp, and now starting to talk about OOP in-depth, I realise that I was only loosely applying aspects of OOP to my code during these preliminary weeks. Procedural programming is an old style of programming where variables and functions are separated out across the code and those variables and functions can work together to provide output. Procedural programming is acceptable for small scale applications with a clear start and finish (such as the Crocodile River game in the mastery quizzes). One such drawback of this can be that as the codebase becomes more complex, confusion can arise as to the relationships between these data and functions. As a result, code can become difficult to change as making a change in once place lead to needing to make a change elsewhere. Data and functions can become heavily dependent on each other and this can lead to spaghetti code.
    
**Object Oriented Programming** (OOP for short) was devised as a solution to problems such as those above. Related sets of data and functions are _encapsulated_ (grouped together) in sections of code called 'objects'. The encapsulation of state and behavior in this way allows for greater complexity and maintainability within applications. Encapsulation also guards against the unintentional misuse of instance variables and methods in the wrong places by enforcing levels scope as to where they can be used. I.e. a `@name` variable of a `Person` class cannot be changed globally. A clear method such as `instance_of_person.change_name('new name')` may have to be used to change such a property, and the developer has control over whether such 'setter' methods exist at all. (At least, in Ruby) `instance_of_person.name = 'new name'` would not work unless the developer explicitly allowed `attr_writer` or `attr_accessor` control over the variable.

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

A benefit of Inheritance is that it helps greatly with the **reusability** of your code. You may have written a useful class somewhere, and now you can extend upon it by inheriting its state and behavior. 
  
### Single Responsibility Principle (SRP)
SRP is one of the SOLID principles and asserts that chunks of code should serve one purpose and serve it well. Classes _especially_ should follow the SRP. For example, a `BankAccount` class could have methods that both allow the balance to be viewed and altered. However, these should belong to separate classes so that changing one feature has minimal effect on other features. Sandi Metz, author of _Practical Object Oriented Design in Ruby_ gives excellent advice on determining whether your class currently adheres to the SRP:

> "Another way to home in on what a class is actually doing is to 
> attempt to describe it in one sentence"
> \- Sandi Metz, _Practical Object Oriented Design in Ruby - 2nd 
> Edition_ (for Kindle), p22

If you find yourself using words like 'and' or 'or', then your class (or method) may be taking on too much responsibility. Classes or methods like this should be divided into separate classes with names that reflect what they are doing more accurately. Using the Extract Variable, Extract Method and Extract Class methods, you can divide responsibility across your code effectively. SRP, like Inheritance makes your code highly reusable because you can take a class or method from one codebase without worrying about it being too (if at all) interdependent on the codebase you copied it from. Following SRP also makes your code easy to change. Changing methods and classes that have multiple responsibilities is difficult because making a change to it can impact upon more than one feature. Therefore, changing code in one place may lead to the need to change it in another, then another and so on.