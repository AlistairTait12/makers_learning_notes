# Names Storage application
This was from an exercise in week 3 of the bootcamp. A student wanted an IRB application so that they could store the names of people so they could be remembered
  
> As a **student**  
> So that I can _remember_ **people's names**  
> I want an IRB **application** that _stores_ the **names** of people I meet  
  
*Imagine* how to use it  
|Object     |Message(s)   |
|-----------|-------------|
|Student    |             |
|Name       |`store_name` |
|Application|`list_names` |
  
Feature 1: Storing names to the app  
**student**--`store_name`-->**app**

Feature 2: Reading names from the app
**student**--`list_names`-->**app**--_outputs names_-->

## Comments
I tackled the code and the tests in the completely wrong way to begin with. My **assumption** (assumptions are bad!) was that as an IRB application a non-OOP approach would be acceptable. It was not. As the tests and code became more complex, it was apparent that I could no longer rely on a global variable (`$names`) to hold the names in an array as this made the tests run incorrectly. The test cases were continuing to use the state of the `$names` variable to evaluate their expectations.
  
My next approach was to define a class and start using that with instance methods instead. The tests then passed.