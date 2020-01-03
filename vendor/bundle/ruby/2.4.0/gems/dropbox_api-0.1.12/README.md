# DropboxApi

Library for communicating with Dropbox API v2.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dropbox_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dropbox_api

## Documentation

Please, refer to this gem's custom [Dropbox API
documentation](http://jesus.github.io/dropbox_api).
Most of the time you'll be checking the [available
endpoints](http://jesus.github.io/dropbox_api/DropboxApi/Client.html).

Unfortunately, the documentation at [RubyDoc.info](http://www.rubydoc.info) is
disrecommended because it lacks some nice features that have been added with
YARD plugins:

- Each endpoint includes its tests right below the description, this works as
  an example of its usage.
- All endpoints are shown as methods of the `Client` class, just as you will
  use them.

## Basic set up

### Authorize your application

Dropbox uses OAuth, in order to use this library from your application you'll
have to get an authorization code.

Once you have it, just pass it on client initialization:

```ruby
DropboxApi::Client.new("VofXAX8D...")
#=> #<DropboxApi::Client ...>
```

Or set it as an ENV variable called `DROPBOX_OAUTH_BEARER`, for example:

```ruby
ENV["DROPBOX_OAUTH_BEARER"] = "VofXAX8D..."
DropboxApi::Client.new
#=> #<DropboxApi::Client ...>
```

Note that setting an ENV variable is only a feasible choice if you're only
using one account.

#### Option A: Get your access token from the website

The easiest way to obtain an access token is to get it from the Dropbox website.
You just need to log in to Dropbox and refer to the *developers* section, go to
*My apps* and select your application, you may need to create one if you
haven't done so yet.

Under your application settings, find section *OAuth 2*. You'll find a button
to generate an access token.

#### Option B: Use `DropboxApi::Authenticator`

You can obtain an authorization code with this library:

```ruby
authenticator = DropboxApi::Authenticator.new(CLIENT_ID, CLIENT_SECRET)
authenticator.authorize_url #=> "https://www.dropbox.com/..."

# Now you need to open the authorization URL in your browser,
# authorize the application and copy your code.

auth_bearer = authenticator.get_token(CODE) #=> #<OAuth2::AccessToken ...>`
auth_bearer.token #=> "VofXAX8D..."
# Keep this token, you'll need it to initialize a `DropboxApi::Client` object
```

#### Standard OAuth 2 flow

This is what many web applications will use. The process is described in
Dropbox's [OAuth guide]
(https://www.dropbox.com/developers/reference/oauth-guide#oauth-2-on-the-web).

If you have a Rails application, you might be interested in this [setup
guide](http://jesus.github.io/dropbox_api/file.rails_setup.html).

### Performing API calls

Once you've initialized a client, for example:

```ruby
client = DropboxApi::Client.new("VofXAX8D...")
#=> #<DropboxApi::Client ...>
```

You can perform an API call like this:

```ruby
result = client.list_folder "/sample_folder"
#=> #<DropboxApi::Results::ListFolderResult>
result.entries
#=> [#<DropboxApi::Metadata::Folder>, #<DropboxApi::Metadata::File>]
result.has_more?
#=> false
```

The instance of `Client` we've initialized is the one you'll be using to
perform API calls. You can check the class' documentation to find
[all available endpoints](http://jesus.github.io/dropbox_api/DropboxApi/Client.html).

### Large file uploads

If you need to upload files larger than 150MB the default `#upload` endpoint
won't work. Instead, you need to start a upload session and upload
the file in small chunks.

To make this easier, the method `upload_by_chunks` will handle this for you,
example:

```ruby
client = DropboxApi::Client.new("VofXAX8D...")
#=> #<DropboxApi::Client ...>
File.open("large_file.avi") do |f|
  client.upload_by_chunks "/remote_path.txt", f
end
```

Check out the
[method documentation](http://www.xuuso.com/dropbox_api/DropboxApi/Client.html#upload_by_chunks-instance_method)
to find out all available options.



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`bin/console` for an interactive prompt that will allow you to experiment.

### Testing

I recommend you to use a test account other than your main one.

We use VCR to record the HTTP calls to Dropbox, however we sometimes need to
regenerate the cassettes. Let's take `list_folder` as an example to show what
would be the procedure to do so:

 1. Manually delete the existing cassettes in
    `spec/fixtures/vcr_cassettes/list_folder/*.yml`.

 2. Run the task to build the scaffolding in your Dropbox account so the tests
    will pass. If it doesn't exist you may need to write it yourself, check
    the `DropboxScaffoldBuilder` class to find all existing scaffold builders.

    ```text
    DROPBOX_OAUTH_BEARER=YOUR_AUTH_BEARER rake test:build_scaffold[list_folder]
    ```

 3. Run the tests and the cassettes will be written:

    ```text
    DROPBOX_OAUTH_BEARER=YOUR_AUTH_BEARER rspec spec/endpoints/files/list_folder_spec.rb
    ```

The OAuth bearer shouldn't have been recorded in the cassette and it should've
been filtered. However, you may want to double check before pushing your
updates to Github.

Tip: You can simply run `export DROPBOX_OAUTH_BEARER=YOUR_AUTH_BEARER` at
the beginning of your work session so you don't need to prefix it in every
command line.

## Contributing

Any help will be much appreciated. The easiest way to help is to implement one
or more of the [endpoints that are still pending](http://jesus.github.io/dropbox_api/file.api_coverage.html). To see how the
endpoints are implemented, check out the `lib/dropbox_api/endpoints` folder.
