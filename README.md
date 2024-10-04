# Gruber Darkest #
[Gruber Darker](http://jblevins.org/projects/emacs-color-themes/color-theme-gruber-darker.el.html)
is a color theme for Emacs by Jason Blevins. This is a darker, low contrast variant of the [rexim's fork](https://github.com/rexim/gruber-darker-theme) of
[Gruber Dark](http://daringfireball.net/projects/bbcolors/schemes/)
theme for BBEdit by John Gruber. Adapted for deftheme and extended by
ptrfs.

# Screenshot #
![gruber-darkest-theme](https://i.imgur.com/bMKld3e.png)

# Installation #

You can use built-in package manager (package.el) or do everything by
your hands.

## Using straight.el ##
You can use straight.el to install it

```
(straight-use-package
 '(gruber-darkest-theme
   :type git
   :host github
   :repo "ptrfs/gruber-darkest-theme"))
```

## Manual old fashioned way ##

Download the theme to your local directory. You can do it through `git
clone` command:

```
git clone git://github.com/ptrfs/gruber-darkest-theme.git
```

Then add path to gruber-darker-theme to custom-theme-load-path list —
add the following to your emacs config file somewhere (.emacs,
init.el, whatever):

```
(add-to-list 'custom-theme-load-path
             "/path/to/gruber-darkest-theme/")
```

Use `M-x customize-themes` to change your current theme.

# Contribution #

Gruber Darkest is an awesome theme. But it has a lack of support for
many good modes. I add color faces only for modes I use. If you like
this theme and use a mode that looks very bad with it, feel free to
add appropriate color faces (see file gruber-darkest-theme.el) and send
me a pull request.

Thanks.
