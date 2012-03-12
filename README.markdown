= rack_shootout

I've always been a fan of nginx & unicorn over Phusion Passenger, but when we launched (Stride)[http://strideapp.com], I wanted to challenge my assumptions on that, and we went with Passenger to launch. It was _not_ fast, and quite a memory hog, and pretty quickly I flipped back over to nginx & unicorn, and we had a ton more traffic pushed through.

I wanted to actually benchmark different Rack-based http servers, so I made a simple Sinatra app, and hammered it on httperf. I plan to re-run these tests a couple times a year as servers are updated. If you find a problem or a mistake, I'd love to hear about it!

== The Servers
 * Phusion Passenger + Apache
 * Phusion Passenger + nginx
 * unicorn + nginx
 * rainbows! + nginx

== The App

The Sinatra app has two urls:

 * one that sleeps for 100msecs to pretend we're waiting on a database or external API.
 * one that returns a 500kB string, to pretend we're sending out a big chunk of data.

There's also static assets that need to happen in a little bit.
 
I plan to simulate more usage patterns at a later date.

== TODO

 * Better statistics - I'd love to have somebody who's better versed in stats give this a once-over
 * Automate the magic?