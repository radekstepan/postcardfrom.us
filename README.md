#Voyage dans le Pacifique [![Built with Grunt](https://cdn.gruntjs.com/builtwith.png)](http://gruntjs.com/)

Travel log in [Jekyll](http://jekyllrb.com/).

##Features

1. **Multiple languages** supported. Location of a user is detected and a locale-specific site served.
1. **Dynamic loading** of new content on scroll.
1. **Random article** functionality.
1. **Archive** of posts and posts by **tag**.
1. Support for `sitemap.xml` and `robots.txt`. SEO is somewhat achieved.
1. Per language **RSS** feed.
1. Text, images, quotes, links and [Vimeo](vimeo.com) videos can be embedded.
1. *and* all with vanilla Jekyll build that can be built by [GitHub Pages](http://pages.github.com/).

![image](https://raw.github.com/radekstepan/voyage-pacifique/gh-pages/example.jpg)

##Quickstart

Create a new post in `_posts` and then install & build:

```bash
$ gem install jekyll
$ jekyll build
```

##Commands

###Jekyll

Install:

```bash
$ gem install jekyll
```

Watch & serve for local development:

```bash
$ jekyll serve --watch --drafts --baseurl=
```

Build:

```bash
$ jekyll build
```

###Bower & Grunt

Install `npm` dependencies:

```bash
$ npm install -d
```

Get vendor libraries using `Bower`:

```bash
$ bower install
```

Watch styles and scripts and build them using `Grunt`:

```bash
$ watch --color -n 1 grunt
```

To make a minified build:

```bash
$ grunt minify
```

Minified resources will be required on a page when `baseurl` parameter to Jekyll is not empty.

##Customization

###Post Layout

See the [tutorial](http://jekyllrb.com/docs/posts/) on writing new posts. This site gives you some extra variables you can use in the [front-matter](http://jekyllrb.com/docs/frontmatter/):

####Locale

You can specify the language of a post by setting the `category` to either `en` or `cz`.

```yaml
category: cz
```

####Photos

One or more photos can be embedded in the header of the post as follows:

```yaml
photos: [ plane.jpg, sky.jpg, river.jpg ]
```

These will be looked up in `assets/photos/`

####Location

One can add a meta attribute, location, to the post as follows:

```yaml
location:
    name: Somewhere, China
    ddd:  [ 41.40338, 2.17403 ]
```

The `location.ddd` attribute refers to an array containing two parameters, latitude and logitude.

####Types

#####Text

A bog standard text post. Can have images.

```yaml
type: text
```

#####Quote

Quotation, will hide the title from the post.

```yaml
type: quote
```

And then say in markdown:

```md
> Design is not just what it looks like and feels like. Design is how it works.

— Steve Jobs
```

#####Link

Will make the title of the post link to the `href` instead to its permalink.

```yaml
type: link
href: http://google.com
```

#####Video

Will embed a [Vimeo](http://vimeo.com) video by its `video.id`. You can optionally specify a `video.color` which will correspond to the color of links and buttons in the video.

```yaml
type:     vimeo
video:
    id:    84713245
    color: c9ff23
```