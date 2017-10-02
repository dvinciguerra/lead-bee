# LeadBee - Lead management platform

LeadBee is a simples and easy-to-use lead management open-source plataform that can
be used to give us an user friendly interface to manage leads, segmentation list and
marketing campaign.

![Project Screenshot](https://raw.githubusercontent.com/dvinciguerra/lead-bee/master/screenshot.png)


**Demo project**

[https://infinite-coast-27248.herokuapp.com/](https://infinite-coast-27248.herokuapp.com/)


**Running project on development env**

  - Install ruby 2.4+ (we recommend use rbenv or rvm)
  - Clone this `git` repo
  - Install postgresql
  - Run `bundle` to install all dependencies
  - Migrate database using `rake db:create && rake db:migrate`
  - Start server using `rails server`
  
 **TODO**
 
  - Make better tests using capybara and rspec
  - Improve UX
  - Make a auth to admin data
  - Separate frontend to backend (using backend as api)
 
**Running tests**

You can run tests using `rails spec`.

**Author**

Daniel Vinciguerra <daniel.vinciguerra@bivee.com.br>
