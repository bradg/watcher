watcher.rb
=======

Simple script to watch folders and run a command when a file changes

Put in in your path so that you can do:

  watcher.rb rspec

  watcher.rb rspec spec/models/run_just_this_spec.rb

  PATHS="app lib" cucumber features

I found guard way to complex and crashed far too often, so I built this simple script that monitors for file changes and
executes the command given.  Useful for trying to fix a single spec/cucumber or for executing a particular file outside of a 
rails app.
