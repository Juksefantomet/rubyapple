## Rubyapple

## Contributing [![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

## Improvisation [![Improvised 100pct](https://img.shields.io/badge/Improvised-100%25-brightgreen.svg?longCache=true&style=plastic)](https://github.com/juksefantomet)


>This is Rubyapple
> A gem to convert a png picture into respective:
> apple-touch-icon-sizexsize.png
> and
> apple-touch-icon-sizexsize-precompiled.png
 

## PRE-Installation
```rb
sudo apt-get install -f libmagickwand-dev imagemagick
```

## Installation

```rb
gem install rubyapple
```

## Usage

NOTE! Create the apple_images folder where you invoke the rubyapple command, but do not enter it.

```rb
rubyapple picture.png
```

output will be contained in the following folder where you invoked the command

```rb
cd apple_images/
```

```
user@computer:~/apple_images$ ls -l
total 840
-rw-rw-r-- 1 user user 20960 Sep 17 17:26 apple-touch-icon-114x114.png
-rw-rw-r-- 1 user user 20960 Sep 17 17:26 apple-touch-icon-114x114-precomposed.png
-rw-rw-r-- 1 user user 22637 Sep 17 17:26 apple-touch-icon-120x120.png
-rw-rw-r-- 1 user user 22637 Sep 17 17:26 apple-touch-icon-120x120-precomposed.png
-rw-rw-r-- 1 user user 29994 Sep 17 17:26 apple-touch-icon-144x144.png
-rw-rw-r-- 1 user user 29994 Sep 17 17:26 apple-touch-icon-144x144-precomposed.png
-rw-rw-r-- 1 user user 32619 Sep 17 17:26 apple-touch-icon-152x152.png
-rw-rw-r-- 1 user user 32619 Sep 17 17:26 apple-touch-icon-152x152-precomposed.png
-rw-rw-r-- 1 user user 37595 Sep 17 17:26 apple-touch-icon-167x167.png
-rw-rw-r-- 1 user user 37595 Sep 17 17:26 apple-touch-icon-167x167-precomposed.png
-rw-rw-r-- 1 user user  1141 Sep 17 17:26 apple-touch-icon-16x16.png
-rw-rw-r-- 1 user user  1141 Sep 17 17:26 apple-touch-icon-16x16-precomposed.png
-rw-rw-r-- 1 user user 42094 Sep 17 17:26 apple-touch-icon-180x180.png
-rw-rw-r-- 1 user user 42094 Sep 17 17:26 apple-touch-icon-180x180-precomposed.png
-rw-rw-r-- 1 user user 76201 Sep 17 17:26 apple-touch-icon-270x270.png
-rw-rw-r-- 1 user user 76201 Sep 17 17:26 apple-touch-icon-270x270-precomposed.png
-rw-rw-r-- 1 user user 92879 Sep 17 17:26 apple-touch-icon-310x310.png
-rw-rw-r-- 1 user user 92879 Sep 17 17:26 apple-touch-icon-310x310-precomposed.png
-rw-rw-r-- 1 user user  2381 Sep 17 17:26 apple-touch-icon-32x32.png
-rw-rw-r-- 1 user user  2381 Sep 17 17:26 apple-touch-icon-32x32-precomposed.png
-rw-rw-r-- 1 user user  6634 Sep 17 17:26 apple-touch-icon-57x57.png
-rw-rw-r-- 1 user user  6634 Sep 17 17:26 apple-touch-icon-57x57-precomposed.png
-rw-rw-r-- 1 user user  9402 Sep 17 17:26 apple-touch-icon-70x70.png
-rw-rw-r-- 1 user user  9402 Sep 17 17:26 apple-touch-icon-70x70-precomposed.png
-rw-rw-r-- 1 user user 10832 Sep 17 17:26 apple-touch-icon-76x76.png
-rw-rw-r-- 1 user user 10832 Sep 17 17:26 apple-touch-icon-76x76-precomposed.png
-rw-rw-r-- 1 user user 15913 Sep 17 17:26 apple-touch-icon-96x96.png
-rw-rw-r-- 1 user user 15913 Sep 17 17:26 apple-touch-icon-96x96-precomposed.png
user@computer:~/apple_images$
```

# Cloning/branching:

Make a pull request and make this a better one if you feel like it!

-- Juksefantomet

