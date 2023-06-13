require 'test_helper'
require 'open3'

class Jsoneditor::TasksTest < Minitest::Test

  def setup
    create_dummy_assets
  end

  def teardown
    remove_dummy_assets
  end

  def test_update_assets_task
    output, status = Open3.capture2e("rake update_assets ASSETS_PATH=test/dummy_assets/")

    assert status.success?
    assert_includes output, "All assets have been updated."

    assert File.exist?("test/dummy_assets/javascripts/jsoneditor.js")
    assert File.exist?("test/dummy_assets/javascripts/jsoneditor.map")
    assert File.exist?("test/dummy_assets/javascripts/jsoneditor-minimalist.js")
    assert File.exist?("test/dummy_assets/javascripts/jsoneditor-minimalist.map")
    assert File.exist?("test/dummy_assets/images/jsoneditor-icons.svg")
    assert File.exist?("test/dummy_assets/stylesheets/jsoneditor.scss")

    css = File.read(File.expand_path("test/dummy_assets/stylesheets/jsoneditor.scss"))
    assert_match(/:{1}\s?asset-url\("/, css)
    refute_match(/:{1}\s?url\("\.\/img\//, css)
  end

end
