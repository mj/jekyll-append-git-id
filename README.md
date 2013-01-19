# jekyll-append-git-id #

This is a Jekyll plugin that adds the tag `{% append_git_id %}`. This tag can be
used to ensure that files that resources such as CSS files are reloaded by the
browser once they have been changed in git.

## Installation

Put `append_git_id.rb` in your Jekyll `_plugins` directory. Make sure you have
grit installed. (That's easy using `gem install grit`.)

## Usage

`<link rel="stylesheet" href="{% append_git_id /css/default.css %}" type="text/css" media="screen" />`

=>

`<link rel="stylesheet" href="/css/default.css?87a1b39" type="text/css" media="screen" />`

After the next commit to `css/default.css` the ID behind the question mark
will change and browsers will reload the file even with aggressive caching
headers in place.

## License

See the LICENSE file.
