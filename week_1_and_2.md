# Weeks 1 and 2!

## Summary of My Experience so far:
### 1. Setup and configuration
### 2. Using the Command Line Interface/ Mac OS Terminal
### 3. Version Control/ Git and GitHub
### 4. Ruby Mastery Learning, Quizzes
### 5. Problem Solving
### 6. Peek at TDD

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
