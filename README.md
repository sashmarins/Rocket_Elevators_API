# README

* Ruby version
2.7.6
* Rails version
5.2.7.1
* System dependencies
make sure rbenv, homebrew and zsh are installed properly, and the .zshrc file has this: ```if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi```

The system dependencies can be installed by following this guide for the correct version of Ruby and Rails https://gorails.com/setup/osx/12-montereyhttps://gorails.com/setup/osx/12-monterey for macos 
and for windows: https://gorails.com/setup/ubuntu/22.04

* Configuration
??

* Database creation
Navigate to the Rocket_Elevator_Information_System in the terminal, and to create the database do commands ```rake db:create```
```rake db:migrate``` and then ```rake db:seed``` 
The command 
```rake db:setup``` 
MAY work as a replacement for the 3 previous commands, but some errors may be caused.

* Database initialization
???

* How to run the test suite
in the Rocket_Elevator_Information_System directory, do command ```rails s``` to begin running the testserver, in the in the browser go to localhost:(whatever ip you designated) {default is 3000}

* Services (job queues, cache servers, search engines, etc.)


* Deployment instructions


* ...
