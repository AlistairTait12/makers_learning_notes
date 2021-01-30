# Week 3
## Learning Outcomes:
(According to the makers apprentice repo)
- [ ] Gather evidence and use reflection to choose goals and track their progress
- [x] Test-drive a simple program using objects and methods
- [x] Pair using the driver-navigator style
- [x] Follow an effective debugging process
## Other topics learned this week 
- [x] (User Stories etc)
- [ ] Boris Bikes and Airport Challenge
- [ ] Peek at OOP

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

## Pair using the driver-navigator style
### Pair Programming advantages
* Two minds greater than one
* Bugs, typos and the like spotted earlier
* Learn from and improve eachothers' mental models
* Agreement on ideas can lead to faster progress
  
This week I have had some great pairing sessions. I have learned that pair programming is an effective way to tackle a project. There are several different styles of pair programming. The one I focussed on this week is the **Driver/ Navigator** style which is a process whereby one developer takes the keyboard and writes the code (_driver_) and the other instructs on what to write and does the thinking (_navigator_). There are other styles which I will no doubt come across during my experience as a software engineer. Another style is the tour guide/ tourist style. This style is where one (sometimes more senior) dev takes the lead and explains to the other dev things such as what the code is doing (explaining the codebase, the framework or the language) and the other dev learns whatever is being explained to them. This style is particularly useful in situations where a newcomer has started at a new organisation, or is still learning how to code and they can be guided by a more experienced dev.
## Follow an effective debugging process
Another large part of this week has been being able to debug code. This is the process of turning code that does not work into code that does work. I.e. getting rid of bugs (_bugs are elements of your code that prevent it from working. They could be as simple as a typo or a syntax error_). Some great ways of dealing with bugs are:
* Reading the error messages and finding out things such as:
    * Which line of the code does the bug originate from?
    * What _type_ of error is being thrown? I.e.
        * **TypeError** - where you are trying to perform some operation on a data type that the operation is not compatible with
        * **NoMethodError** - the method that you are trying to call does not exist for this object
        * **ArgumentError** - the method expects a certain number of arguments but you have passed too few or too many
        * There are more types of error than this
* Outputting messages to the console to try and identify at which stage of the code is the bug occurring?
* Sometimes there are no errors thrown but the code still does not do as you expect. This is where unit and feature testing comes in especially useful. You can explicitly state what you expect and the testing framework will raise an error, whereas simply running the code as normal would not.

## User Stories
Over the course of this week, I have become more familiar with **user stories**. I was slightly aware of them before but this week I have really understood their value in producing code that does exactly as is expected of it.  
User stories are an excellent way of getting to the bottom of what the customer would like. A simple user story can follow this basic format:  
> As a (_type of user_)  
> So that I can (_do something_)  
> I would like (_this feature_)  
  
An example could be:
> As an **account** holder  
> So that I can meet my **savings goals**  
> I would like to be able to _set a_ **savings target** _each month_  
  
User stories are usually analysed and dissected to extract keywords which will help the dev team work out exactly how to design and implement the feature that the customer would like. In the above example, I have emboldened useful nouns and italicized useful verbs. Quite often, nouns can be a good indicator of which **objects** to design and verbs can be a good indicator of which _messages_ should be passed between them. A good way of representing this can be in a table, like so:  
|Objects      | Messages            |
|-------------|---------------------|
|account      |`set_target`         |
|saving target|`notify_on_progress` |  
  
This is a very simple representation. Most of the time, several user stories are grouped together to create a collection of features which enhance the user's experience. User stories are also a great way of 'putting yourself inside the head of a user'. Devs can often not just simply choose what features to implement, but also think about how they will be used, and how their design choices will affect the user experience.  

## Boris Bikes and Airport Challenges
(**And what I learned from them**)
### Boris Bikes Challenge
* More experience in pair programming
* More experience in designing classes and their methods
* More experience in TDD