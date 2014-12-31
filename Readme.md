# LazyDown

LazyDown glues together the following open source components

* [redcarpet](https://github.com/vmg/redcarpet)
* [pygments.rb](https://github.com/tmm1/pygments.rb)
* [github-markdown-css](https://github.com/sindresorhus/github-markdown-css)

so I can preview (offline) my GitHub README files before I push them to GitHub.

```bash
$ bundle # to install gems
$ ruby lazydown.rb < Readme.md > Readme.html
$ open Readme.html
```

