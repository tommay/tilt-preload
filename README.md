tilt-preload
============

[![Gem Version](https://badge.fury.io/rb/tilt-preload.svg)](http://badge.fury.io/rb/tilt-preload)
[![Build Status](https://travis-ci.org/tommay/tilt-preload.svg)](https://travis-ci.org/tommay/tilt-preload)

A simple gem to avoid the "non thread-safe autoload" warnings generated
by tilt 2.x when it autoloads its tilt/* helper files.

Tilt is correct that autoloading these files isn't thread safe.  This
gem works by loading the necessary files at require time.  Put
"tilt-preload" in your gemspec and +require "tilt-preload"+ in your
code instead of +require "tilt"+.  Require any template engines before
+require "tilt-preload"+:

```
require "haml"
require "redcarpet"
require "tilt-preload"
```

tilt-preload is most sugary when you're not using "tilt" directly, but using
some other gem like [angelo](https://github.com/kenichi/angelo) where
angelo can use tilt under the hood and you don't care, just be sure to
require your templating engines first:

```
require "haml"
require "redcarpet"
require "angelo"
```

There's a (pull request)[https://github.com/rtomayko/tilt/pull/253]
open for tilt to include thie functionality but I can't wait forever
for it to be accepted or declined so I made this silly gem in the
interim.
