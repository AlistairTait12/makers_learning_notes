## Exercise 1
> As a **student**
> So that I can _remember_ **people's names**
> I want an IRB **application** that _stores_ the **names** of people I meet
  
*Imagine* how to use it  
|Object     |Message(s) |
|-----------|-----------|
|Student    |           |
|Name       |store_name |
|Application|list_names |
  
Feature 1: Storing names to the app  
**student**--`store_name`-->**app**

Feature 2: Reading names from the app
**student**--`list_names`-->**app**--_outputs names_-->

## Exercise 2
> As a **student**
> So that I can understand my **recent motivation**
> I want an IRB **application** that _stores_ my **motivation ratings**
> And _I want to see the average_ of my last 3 **ratings**

**student**--`input_motivation`-->**app**

**student**--`get_average`-->**app**--_outputs average_-->