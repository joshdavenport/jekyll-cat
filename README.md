# Jekyll cat

Its name inspired by unix [cat](https://en.wikipedia.org/wiki/Cat_(Unix)), this Jekyll plugin providing a method to output contents of files and URLs. You can access files relatively (e.g. any file in the site, or in directories surrounding it, permissions allowing) as well as absolute paths (if that is any use) and contents return at URLs.

## Install
Add the following to your Gemfile and then run bundle install.

gem 'jekyll-cat'

## Usage
In liquid, use the `cat` tag to execute your include, passing the tag your path or url.

## Examples
### Relative
```
{% cat assets/vector/my-svg-file.svg %}
```

### Absolute
```
{% cat /path/to/file %}
```

### URL
```
{% cat https://loripsum.net/api/ %}
```

