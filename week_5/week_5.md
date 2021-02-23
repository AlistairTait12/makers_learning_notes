# Week 5 - The Web
> I'll be riding shotgun into battle on a Capybara listening to Sinatra  
  
## Learning Objectives
### Write feature tests using Capybara
> ---**Gemfile Creation**---  
> Minor note, I learned how to do this in the Oystercard challenge but had to do it again this week. 
> 1. Run `bundle init` to create a blank 'Gemfile'
> 2. Add any dependencies like so: 
```ruby
source "https://rubygems.org"

gem 'capybara'
gem 'selenium-webdriver'
```
> 3. Run command `bundle` in the CLI and this will get all the necessary files and add them as dependencies in `Gemfile.lock`
> 4. You may need to run `bundle install` to install any downloaded dependencies  
  
I gave the Capybara workout a try and had some installation issues at first. Luckily, a guide from another cohort member came in extremely useful. After giving it a try, I quickly realised how useful Capybara will be for automating tests of webpages and webapps. The syntax is extremely intuitive and I look forward to using it to write tests.  
  
More **Capybara**: Writing tests in Capybara usually follows a set process: 
1. What does the user have to do? 
2. What does the user expect to see?
  
### Test-drive a simple Sinatra app  
Part of this week was using Capybara to test drive a web application created with Sinatra, a library for creating web applications with HTML and Ruby. The first application I made with this was a silly application where you could fill in a form to name a cat and it would name the cat on the next webpage. Silly as it was, I found a few interesting concepts:
- Sinatra delivers content by defining 'routes' which navigate the user to different webpages or actions based on get/post (and possibly other) requests.
- You can test a sinatra app in a few ways
  - Feature tests in Capybara: giving commands to navigate the application such as `visit(/somepage)` or `click_button "Submit"` and expecting `page` to have content. I.e.:
```ruby
feature 'greeting' do
  scenario 'user visits homepage and expects to see greeting' do
    visit('/')
    expect(page).to have_content "Hello, World!"
  end
end
```
  - Unit tests: written in regular RSpec, they are isolated tests regarding the functionality of your Classes and are supposed to test how well your classes work in isolation. For example:
```ruby
describe SomeClass do
  describe '#a_method' do
    it "returns 'true' because it does something" do
      expect(subject.a_method).to eq true
    end
  end
end
```
  
### Follow an effective process to debug web applications  
> GET VISIBILITY --- TIGHTEN THE LOOP  
  
Now, not only are bugs located within the file which they occur, but a bug can happen anywhere in the application because of a linked file. For example, something might be broken in your app.rb, but it could be because of something in your classes. The challenge now is chasing a bug across multiple files. What can be a solution to this? GET VISIBILITY, TIGHTEN THE LOOP.

### Explain and diagram the HTTP request/response cycle  


### Explain and diagram the MVC pattern  
**Applying this to my message board exercise in week 6**

| Step  |     Client     |       Controller       |          Model          |              View              |
| :---: | :------------: | :--------------------: | :---------------------: | :----------------------------: |
|   1   |  visit '/' >   | GET '/', return :index |                         |                                |
|       |                |                        |                         |                                |
|   2   | fill in form > |   POST '/message' >    | map message to object > | render :index with new message |
|  ...  | views messages |     < redirect '/'     |           <--           |   < Send back to controller    |  

The MVC pattern is an _extremely_ useful method for designing a web application. Parts of your code are split across:
- **M**odel - The _logic_ behind your application. Classes, methods, modules etc
- **V**iew - How the application _looks_. Webpage layouts, HTML, CSS etc
- **C**ontroller - The medium within which the different parts of the app are brought together. Definitions of HTTP routes, passing params between pages etc.
This is called _Separation of Concerns_

## Pair Programming Challenges  


## General advice taken from this week
From the pairing challenge walkthroughs:
> If you ever use a global variable in a hiring tech test, you will instantly fail. Don't do it.  

D.U.G. _Don't Use Global_
###### Just don't