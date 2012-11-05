require 'rubygems'

load 'lib/math_games.rb'
load 'lib/string_game.rb'
load 'lib/sort_games.rb'
load 'lib/carta.rb'
load 'lib/baraja.rb'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir[File.expand_path(File.join(File.dirname(__FILE__),'support','**','*.rb'))].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
end  

