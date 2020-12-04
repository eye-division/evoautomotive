---
title: jekyll-bulma-feather
---

# What?

It's a barebones Jekyll theme that includes Bulma and Feather, with some default
layouts and a few SCSS tweaks to provide a half-decent batteries-included
experience.

# Why?

I originally created this for [the website of one of my
projects](https://base32h.github.io), and decided it looks nice enough that I
might as well make it reusable so I could use it for other things, too.

# How?

## Install it

### Normal Jekyll

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-bulma-feather"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-bulma-feather
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-bulma-feather

### GitHub Pages

Add this line to your site's `_config.yml`:

```yaml
remote_theme: YellowApple/jekyll-bulma-feather
```

## Use it

This theme's already pretty batteries-included with some sensible-ish defaults.

You might want to consider some customizations, in which case you can define
your own `assets/style.scss` with the following:

```scss
---
# frontmatter is required
---

// If you want to override any Bulma variables, do it here.

@import "jekyll-bulma-feather";

// Start full-blown customizing here.
```

If you want a clean slate, you can do `@import "bulma"` instead.  You'll likely
want to define your own `_layouts/default.html` if you do so (since it relies
heavily on the theme's "battiers-included" tweaks).

### Navbar

The default templates include a nav bar that you can configure in your
`_config.yml`:

```yaml
navbar:
    title: Blog
    logo: /my-logo.svg
    start:
        -   title: Home
            url: /
            icon: home
    end:
        -   title: GitHub
            url: https://github.com
            icon: github
```

`site.navbar.title` and `site.navbar.logo` both fall back to `site.title` and
`site.logo`, respectively (that way, if your site's own title/logo ain't
well-suited for use in the nav bar, you can freely override them).

### Feather icons

You can use a Feather icon by name, like so:

```html
{% raw %}{% include feather.html icon="github" %}{% endraw %}
```

The default Feather styling is through the `.feather-icon` class, which you can
modify in your site's SCSS files as needed (e.g. to make it bigger or smaller
than 1em for different text sizes, or to re-include this outright if you went
with the clean-slate Bulma approach per above).

```scss
.feather-icon {
    @extend .icon;
    margin-right: 0 !important;

    >svg {
        width: 1em;
        height: 1em;
        stroke: currentColor;
        stroke-width: 2;
        stroke-linecap: round;
        stroke-linejoin: round;
        fill: none;
    }
}
```

# Who?

See the included `COPYING.md` file for details (or if you're viewing this README
as a Jekyll site, click the "License" link in the navbar above).
