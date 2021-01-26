# Week 3
## Learning Outcomes:
(According to the makers apprentice repo)
* Gather evidence and use reflection to choose goals and track their progress
* Test-drive a simple program using objects and methods
* Pair using the driver-navigator style
* Follow an effective debugging process
## Other topics learned this week 
* (User Stories etc)

### Test-drive a simple program using objects and methods
|Header         |General                     |
|---------------|----------------------------|
|TDD advantages |Why we do TDD               |
|Cycle          |Red - Green - Refactor      |
|3 As of TDD    |Arrange/ Act/ Assert        |
|RSpec          |A testing framework for Ruby|

## TDD advantages
TDD may seem tedious at first, but the more I have gotten into the habit of doing it, the more I have seen the advantages. Here are just a few:
1. TDD limits bugs and errors by allowing you to only write as much code as is sufficient to pass the current test
2. You can rest assured that your code will do exactly as you intended it to because of the above
3. Your colleagues will know that your contribution to the codebase works because it has been tested
4. Writing tests that validate your code is a great way of documenting your code
5. You can let the errors guide you closer to working code
  
## A cycle for TDD
> **RED - GREEN - REFACTOR**  
  
A good process for testing is the above cycle. Red - Green - Refactor is a process whereby you are constantly rotating your mindset between writing a test that you know will fail, adding code to your application so that you will pass the test, and then refactoring your code while it is still 'green' and then moving on to writing the next failing test.