# Weeks 1 and 2!

## Summary of My Experience so far:
### 1. Setup and configuration
### 2. Using the Command Line Interface/ Mac OS Terminal
### 3. Version Control/ Git and GitHub
### 4. Ruby Mastery Learning, Quizzes
### 5. Problem Solving, Peek at TDD and Wellbeing

## Setup and configuration
#### TL;DR - setup various tools within my coding environment
This was a simple case of preparing my coding environment on the MacBook Air on loan from Makers. The main tools I installed were:
* **Xcode command line tools**
* **Homebrew**
* **Ruby and RVM (Ruby Version Manager)**
* Pry
* Heroku

(The tools in bold are what I have made use of *so far*). I had a few issues with the setup. Xcode installed without issue but I had some issues with the Homebrew setup. This, in turn, led to me not being able to install the version of ruby required for the mastery quizzes. I could get by ok until a certain point but when I began the quizzes, the tests wouldn't run properly so I had some invaluable help from member of staff at Makers who helped me resolve the issue. My main takeaway from this was to **read the error messages** properly. Being able to decipher the errors helped point me towards possible solutions to the issue.  
  
## Command Line Interface
#### TL;DR - The command line is a powerful tool which gives you greater control over your machine than the regular OS GUI does
Learning about the command line was fun. I had messed around with it previously while learning ruby in my spare time, but only really knew how to change directory (`cd`) or run a ruby program with the `ruby some_program.rb` command. I learned many basic commands commonly used in the creation and organisation of files and directories. Some commands I can recall while writing this article:
* `ls` - list the files and folders in the current directory
* `mkdir dir_name` - create a directory with the name specified after the command
* `rmdir dir_name` - remove the **empty** dir by the name of...
* `mv file_name.txt ./dir/file_name.txt` - move a file or folder to another directory by stating the path after the filename you wish to move. You can optionally rename the file in the process by renaming it in the specified path
* `cp my_file.txt my_file_with_new_name.txt` - copy a file into a new one
* And many more!
  
Overall, the command line is extremely powerful, even without using it as a software developer, but it will be used even more for tasks such as source control and running code. One (of many) gotchas I learned was that to rmdir doesn't just move your file/folder to a recycle bin like a normal file explorer, **it erases it completely**, so be sure to use that command with care...

## Version Control (Git/ GitHub)
#### TL;DR - Version control is a way of tracking changes to your code so that you can re-visit working versions of your code, should you run into major issues. Git and GitHub are two (of many) tools that allow developers to do this.
Prior to the bootcamp, I had not used git very much. After using it quite a bit on the course, it now just seems like the logical thing to do with any coding project, no matter the size. Git allows developers to (among other things):
* Track changes made to source code
* Store versions of code in a "repository" or "**repo**" for short
* Re-visit past versions of source code to check how things *were* working if they run into issues further down the line
* Collaborate with other devs on the same local network by each being on a "branch" and then joining those branches together to get a finished product  

I learned the basic commands while going through this section of the module, which were:
* `git init` - initializes and empty git 'repo' within whichever directory you run the command. Changes to your files are kept there.
* `git add filename` - tells git to add all changes made to this file to the 'staging area'
* `git commit -m "your commit message here"` - tells git to 'commit' these changes to the repo. The same as saying, "I want these changes to be recorded at this particular point in time"
* `git status` - provides a report on which files have been changed and whether those new changes must be added to the staging area prior to commit
  
Commonly used with Git is a tool called **GitHub**. GitHub is a website where devs can store their work 'remotely'. A bit like a Google Drive, but for developers! GitHub is useful because:
* It allows developers to collaborate with others on projects even though they may not be located near each other.
* Keeps a copy of your precious code remotely, so that if you were to lose hardware storing the code, you would have a backup copy that you could then '`git clone`' to another machine.
* Acts as a sort of 'portfolio' for your code, so that other people interested in your projects can view what you have been doing.

I had some decent practice working with git and GitHub whilst following the tutorial, but the workflow process became more obvious in the... **mastery quizzes**!

## Ruby Mastery Learning and Mastery Quizzes
#### TL;DR - I revisited some topics and learned some new programming concepts through the mastery exercises.
Throughout the mastery curriculum, I covered the following topics, some of which I was already a little familiar with:
* **IRB** - Stands for '**I**nteractive **R**u**b**y (Shell)'
    * Test some ruby concepts right there in the irb without having to open your editor
    * it is a REPL (**R**ead **E**val **P**rint **L**oop)
* **Strings**
    * An object which holds text
    * you can create a string with a string literal, i.e.
        * `my_text = "hello world!"` (single quotes work to but limit things like string interpolation)
    * Or with the new keyword on the `String` class:
        * `my_text = String.new("hello world!)`
* **Variables** - they hold values and can be declared or updated using the assignment operator '`=`'
* **Methods**
    * `def`ine a block of code for later use within the program simply by calling that method name along with appropriate **arguments**
    * In line with the DRY (**D**on't **R**epeat **Y**ourself) principle as you can use it many times
* **Booleans** (`true` or `false`)
    * Everything in Ruby is considered '**truthy**' (even negative integers), EXCEPT the values of `false` and `nil` (which are **falsy**)
    * You can use these in logical operations to determine which blocks of code to run, i.e.
    ```ruby
    if my_boolean == true
      # Do this bit of code please
    end
    ```
    * It can also apply to loops etc
* **Arrays**
    * Arrays are a type of object which serve as a collection of other objects
    * You access an array with its index like so: `my_array[9]`
    * They are zero-indexed which means that `my_array[0]` would be the element that appeared first in the `my_array`
    * An array can have **any** mixture of objects, i.e. `[1, true, my_object, "hi there!"]`
    * Arrays can even hold other arrays, these are called multi-dimensional arrays, so to get an element from an array within an array, you can use `some_array[1][3]` for example
    * Like strings, they can be declared with an array literal or `Array.new` (which you can pass a block as an argument and it will construct the array as directed)
    * There are many useful methods available to the `Array` class such as:
        * `.each` - iterate through each element in the array and execute some code which uses each element in turn
        * `.join()` - join the strings within this array to form one string joined together with the delimiter that is passed as an argument
        * `.include?()` - return me `true` or `false` to let me know if the array contains the value that I passed as an argument
    * And many others
* **Control Flows**
    * Choosing which blocks of code to execute based on the evaluation of various conditional statements
    * `if`/`else` - run the `if` block of code if a certain condition is `true`, `else` (optional) run this next block of code (or do nothing)
    * `elsif` - if the first condition is `false`, evaluate this condition and run if `true`
    * `unless` - skip this block of code `unless` a condition is `true`
    * `while` loops - keep repeating the code in this loop `while` a certain condition is `true`
    * `for` loops - for every case in a certain range of examples, perform this block of code. I.e. 
    ```ruby 
    for i in (0..10) {puts i}
    ```
* **Hashes**
* Hashes are like arrays in that they hold many different types of object
* An advantage is that you can use **almost anything** as an index for your hash
    * Most commonly integers, strings and **symbols**
* They are organised as key-value pairs like - `worst_king_ever = {first_name: "Joffrey", last_name: "Baratheon", home_town: "Kings Landing"}`
* You would access a value in the hash by using the 'key' (like you would use an index with arrays), i.e. `puts worst_king_ever[first_name]`
* Symbols (written like `:some_symbol`) are string-like objects that are immutable and are often used as keys in hashes
* Their immutability makes them very memory efficient as symbols that share the same value are actually the very same object so they share the same memory space. I.e.
```ruby
# the puts method here would access the same object
puts :some_symbol
puts :some_symbol

# the puts method here is outputting two different objects
puts "some string"
puts "some string"

# the speed difference is imperceptible on small applications but would benefit applications
# at a larger scale
```
* Hashes too can be constructed with the `Hash.new` or can be constructed with a hash literal, like so:
```ruby
my_hash = {
    first_name: "Ned",
    last_name: "Stark",
    titles: ["Lord of Winterfell", "Warden of the North"]
}
```

## 5. Problem Solving, Peek at TDD and Wellbeing
#### TL;DR - Some other highlights of the week were learning some effective problem solving methods, having a peek at Test Driven Development and learning about the importance of my emotional wellbeing as a software engineer