require "test_helper"
require "project_fama/version"

context "ProjectFama version" do
  version = ProjectFama::VERSION

  test "is a String" do
    assert version.is_a?(String)
  end

  test "is not empty" do
    refute version.empty?
  end
end
