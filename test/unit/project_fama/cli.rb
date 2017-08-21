require "test_helper"
require "project_fama/cli"

context "ProjectFama CLI" do
  argv = [
    "--token",
    "GITHUB_TOKEN",
    "--path",
    "/tmp",
    "http://github_project_url"
  ].freeze

  test "is a String" do
    assert version.is_a?(String)
  end

  test "is not empty" do
    refute version.empty?
  end
end
