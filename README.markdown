A simple ruby script to iterate over the commits in a project, and save a screenshot of a given url for each commit id. 

You can set the width and height of the image via the --width and --height options. 

Install the gem

```
gem install commitshots
```

**Usage: **

```
commitshots --width 1024 --height 800 http://youproject.dev
```

For each commit (starting from the first one) it will save a screenshot in ./screenshots


The script requires that you have git and phantomjs in your path.

It has been tested with phantomjs -v 1.6.1 and ruby-1.9.3-p362

