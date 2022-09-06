require "test_helper"

class H1Test < ActiveSupport::TestCase
  test "H1 fragment converts content to its corresponding markdown element" do
    content = "this is a header"

    fragment = DocumentFragments::H1.new(content:)
    result = fragment.to_md

    assert_equal result, "# #{content}"
  end
end
