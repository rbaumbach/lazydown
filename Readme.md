# LazyDown

LazyDown glues the following open source components

* [redcarpet](https://github.com/vmg/redcarpet)
* [pygments.rb](https://github.com/tmm1/pygments.rb)
* [github-markdown-css](https://github.com/sindresorhus/github-markdown-css)

so I can preview (offline) my GitHub README files before I push them to GitHub.

```shell
$ bundle # to install gems
$ ruby lazydown.rb < /path/to/markdown/file.md > /path/to/preview/file.html
$ open /path/to/preview/file.html
```
