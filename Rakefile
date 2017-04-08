require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList['test/**/*_test.rb']
end

task :default => :test

desc "Update JSON Editor version"
task :update_json_editor do
  dist_url = "https://raw.githubusercontent.com/josdejong/jsoneditor/master/dist/"

  puts "Downloading jsoneditor.js"
  puts `curl -o vendor/assets/javascripts/jsoneditor.js #{dist_url}jsoneditor.js`
  puts `curl -o vendor/assets/javascripts/jsoneditor.map #{dist_url}jsoneditor.map`

  puts "Downloading jsoneditor-minimalist.js"
  puts `curl -o vendor/assets/javascripts/jsoneditor-minimalist.js #{dist_url}jsoneditor-minimalist.js`
  puts `curl -o vendor/assets/javascripts/jsoneditor-minimalist.map #{dist_url}jsoneditor-minimalist.map`

  puts "Downloading jsoneditor-icons.svg"
  puts `curl -o vendor/assets/images/jsoneditor-icons.svg #{dist_url}img/jsoneditor-icons.svg`

  puts "Downloading jsoneditor.css"
  puts `curl -o vendor/assets/stylesheets/jsoneditor.scss #{dist_url}jsoneditor.css`

  css = File.read('vendor/assets/stylesheets/jsoneditor.scss')
  content = css.gsub(/url\("img\//, 'asset-url("')
  File.open('vendor/assets/stylesheets/jsoneditor.scss', 'w') { |f| f.write(content) }

  puts "\e[32mDone!\e[0m"
end
