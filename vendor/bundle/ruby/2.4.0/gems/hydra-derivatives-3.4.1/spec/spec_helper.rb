ENV['environment'] ||= 'test'

require 'simplecov'
require 'coveralls'
SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
  add_filter '/spec'
end
Coveralls.wear!

# - RSpec adds ./lib to the $LOAD_PATH
require 'hydra/derivatives'
# Resque.inline = Rails.env.test?
require 'byebug' unless ENV['TRAVIS']

require 'active_fedora/cleaner'
ActiveFedora::Base.logger = Logger.new(STDOUT)
RSpec.configure do |config|
  config.before(:each) do
    ActiveFedora::Cleaner.clean!
  end
end

# Workaround for RAW image support until these are pushed upstream to
# the MIME Types gem
require 'mime-types'
dng_format = MIME::Type.new('image/x-adobe-dng')
dng_format.extensions = 'dng'
MIME::Types.add(dng_format)

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end
