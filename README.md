# shorter_me.cr
Web-API for [shorter.me](https://shorter.me/) which is a FREE URL shortener to shorten a long link and create short URLs easy to share on social, chat and more

## Example
```cr
require "./shorter_me"

shorter_me = ShorterMe.new
short_url = shorter_me.shorten_url("https://example.com")
puts short_url
```
