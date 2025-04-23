## My personal website

Build locally 
  ```bash
  gem install bundler
  bundle install
  bundle exec jekyll serve
  ```
or using Docker
  ```bash
  docker build -t my-jekyll-site .
    ```
  ```bash
  docker run -p 4000:4000 -v $(pwd):/app my-jekyll-site
    ```
## Credit

* Phantom theme, https://github.com/jamigibbs/phantom, (C) 2016 Jami Gibbs, Inc., [MIT](https://github.com/jamigibbs/phantom/blob/master/LICENSE)
