require "test_helper"

class PTest < ActiveSupport::TestCase
  test "P fragment converts content to its corresponding markdown element" do
    content = "this is a paragraph"

    fragment = DocumentFragments::P.new(content:)
    result = fragment.to_md

    assert_equal result, content
  end
end
