# Simple Banking App
#### This is an exercise in creating a test driven app exclusively from a collection of user stories
> As a **customer**,  
> So that I can _keep my_ **money** _safe_,  
> I would like to _deposit_ **money** in my **account**
    
> As a **customer**,  
> So that I can _spend_ my **money**,  
> I would like to _withdraw_ **money** from my **account**  
  
> As a **customer**,  
> So that I can _budget_,  
> I would like to _view_ my **balance**  

My basic approach as follows
Let the demands inspire the tests, let the tests inspire the code
1. Analyse the user stories and find out what the user wants
2. Devise tests based on the features they want and what you expect the app to do
3. Write the tests and be guided by the error messages for writing your code
4. Make small changes, ensuring the error messages change and/or the tests still pass at each stage
5. Repeat the cycle with increasing complexity to the tests as you progress towards fulfilling the user requirements

|  Objects  |  Messages                        |
|-----------|----------------------------------|
|customer   |                                  |
|money      |                                  |
|account    | `deposit`, `withdraw`, `view_bal`|

`money` and `customer` objects may be represented in more complex application. Today, I will be focussing on the `account` object.

Customer > `deposit` > account (customer receives acknowledgement of deposit) account object state changes  
Customer > `withdraw` > account (customer receives money from account) account object state changes  
Customer > `view_bal` > account > (customer notified on their balance)  
  
I will begin writing the **tests**!