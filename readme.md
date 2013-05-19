# Slimdeck

A lightweight framework for writing and running Deck.js decks in the awesome [Slim](http://slim-lang.com/) engine!

## Installing

You'll need Ruby, Bundler and Git.

```
git clone git@github.com:supermario/Slimdeck.git
cd Slimdeck
git submodule update
bundle
shotgun app.rb
```

[Shotgun](https://www.ruby-toolbox.com/projects/shotgun) is a reloading rack development server, meaning you can rapidly make and check deck changes without having to restart Ruby.

## Writing a Deck

Simply create a file for each deck in views/decks. See sample.slim to get started.
