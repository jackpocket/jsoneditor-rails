require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :test

# Use https://cdnjs.com/libraries/jsoneditor to view all files.
DIST_URL = "https://cdnjs.cloudflare.com/ajax/libs/jsoneditor/9.10.5/"

ASSETS_PATH = ENV['ASSETS_PATH'] || 'vendor/assets/'

def update_asset_files
  system "curl -o #{ASSETS_PATH}javascripts/jsoneditor.js #{DIST_URL}jsoneditor.js"
  system "curl -o #{ASSETS_PATH}javascripts/jsoneditor.map #{DIST_URL}jsoneditor.map"
  system "curl -o #{ASSETS_PATH}javascripts/jsoneditor-minimalist.js #{DIST_URL}jsoneditor-minimalist.js"
  system "curl -o #{ASSETS_PATH}javascripts/jsoneditor-minimalist.map #{DIST_URL}jsoneditor-minimalist.map"
  system "curl -o #{ASSETS_PATH}images/jsoneditor-icons.svg #{DIST_URL}img/jsoneditor-icons.svg"
  system "curl -o #{ASSETS_PATH}stylesheets/jsoneditor.scss #{DIST_URL}jsoneditor.css"
end

def use_asset_url_for_css_images
  path = "#{ASSETS_PATH}stylesheets/jsoneditor.scss"
  modified_css = File.read(path).gsub(/url\("\.\/img\//, 'asset-url("')
  File.open(path, 'w') { |f| f.write(modified_css) }
end

desc "Update JSON Editor assets"
task :update_assets do
  update_asset_files
  use_asset_url_for_css_images
  puts "\e[32mAll assets have been updated.\e[0m"
end
