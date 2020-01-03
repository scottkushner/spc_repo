# PulUvRails

A Rails engine wrapper to include the Princeton University Library branded Universal Viewer.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pul_uv_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pul_uv_rails

## Update

Steps for updating the included Universal Viewer

1. Make sure you have **npm** and **bower** installed: https://bower.io/
1. Insert a reference to the latest tagged version of the Princeton branded viwer in [bower.json](https://github.com/pulibrary/pul_uv_rails/blob/master/bower.json#L25).
1. Update using bower:

   ```
   $ bower update
   ```

1. Commit the changes and tag pul_uv_rails with the updated version.

## Edit Viewer Style

1. Make changes to the less files in the [PUL Universal Viewer theme](https://github.com/pulibrary/uv-en-GB-theme).
1. Rebuild the [viewer library](https://github.com/pulibrary/universalviewer):

   ```
   $ grunt build
   ```

1. Commit changes to the viewer and tag.
