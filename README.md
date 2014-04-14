# Brunch + Chaplin.js + Bower boilerplate

## Summary

```
* Brunch
* Chaplin.js
* Bower A package manager for the web
```

## First step
```
git clone git@code.admaster.co:common/brunch_boilerplate.git</pre>
```

## Second step
```
cd brunch_boilerplate
npm install
brunch w
```

# add nginx vhost
```
server {

  root /data/github/brunch_boilerplate/public; # change it, here is your real path
  index index.html index.htm;

  server_name brunch.stonephp.com;

  location / {
    try_files $uri $uri/ /index.html;
  }

  location /doc/ {
    alias /usr/share/doc/;
    autoindex on;
    allow 127.0.0.1;
    deny all;
  }

}
```

## Edit your /etc/hosts append one line
```
127.0.0.1 brunch.stonephp.com
```

## Bowser open http://brunch.stonephp.com




## Links

* [Backbone.js] http://documentcloud.github.com/backbone/
* [Bower] https://github.com/bower/bower
* [Brunch] http://brunch.io/
* [Chaplin.js] https://github.com/chaplinjs/chaplin
  * [Chapline's docs] http://docs.chaplinjs.org/
* [Brunch with Chaplin] https://github.com/paulmillr/brunch-with-chaplin