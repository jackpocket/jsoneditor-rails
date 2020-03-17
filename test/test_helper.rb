$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'jsoneditor/rails'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!([Minitest::Reporters::SpecReporter.new])

def create_dummy_assets
  remove_dummy_assets
  FileUtils.mkdir_p File.expand_path("test/dummy_assets/stylesheets")
  FileUtils.mkdir_p File.expand_path("test/dummy_assets/javascripts")
  FileUtils.mkdir_p File.expand_path("test/dummy_assets/images")
end

def remove_dummy_assets
  FileUtils.rm_rf File.expand_path("test/dummy_assets")
end
