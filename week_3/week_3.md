# Week 3
## Learning Outcomes:
(According to the makers apprentice repo)
* Gather evidence and use reflection to choose goals and track their progress
* Test-drive a simple program using objects and methods
* Pair using the driver-navigator style
* Follow an effective debugging process
## Other topics learned this week 
* (User Stories etc)

## Test-drive a simple program using objects and methods
|Header         |General                     |
|---------------|----------------------------|
|TDD advantages |Why we do TDD               |
|Cycle          |Red - Green - Refactor      |
|3 As of TDD    |Arrange/ Act/ Assert        |
|RSpec          |A testing framework for Ruby|

### TDD advantages
TDD may seem tedious at first, but the more I have gotten into the habit of doing it, the more I have seen the advantages. Here are just a few:
1. TDD limits bugs and errors by allowing you to only write as much code as is sufficient to pass the current test
2. You can rest assured that your code will do exactly as you intended it to because of the above
3. Your colleagues will know that your contribution to the codebase works because it has been tested
4. Writing tests that validate your code is a great way of documenting your code
5. You can let the errors guide you closer to working code
  
### A cycle for TDD
> **RED - GREEN - REFACTOR**  
  
A good process for testing is the above cycle. Red - Green - Refactor is a process whereby you are constantly rotating your mindset between writing a test that you know will fail, adding code to your application so that you will pass the test, and then refactoring your code while it is still 'green' and then moving on to writing the next failing test.
### The AAA of TDD
The 3 As are useful in planning the writing of your tests. They are:
* **Arrange** - Arrange any pre-requisite code necessary for ensuring the test works. I.e. instantiate any classes you will be testing.
* **Act** - perform any necessary actions on the code to prepare it for testing, i.e. assigning any necessary properties to the object to be tested
* **Assert** - state what your expectations will be about the object, i.e. I expect this method to return a given value when a certain method is called upon it.  
#### An example
Here is an example of a test in RSpec which might be useful for highlighting the above points:
```ruby
describe SomeClass do
  it 'can display its own value' do
    # We create an instance of SomeClass (Arrange)
    object = SomeClass.new

    # We then set the state of the instance (Act)
    object.add_value(42)

    # We then 'Assert' our expectations of how the 
    # object will behave (Assert)
    expect(object.show_value).to eq 42
  end
end
```

* Ask Eddie why RSpec does not like arguments passed to initialize method when creating an instance of a class (as in Bike.new(true))
* Ask Eddie whether there should be a method that allows user to report bike as faulty