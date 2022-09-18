require "test_helper"

class DocumentFragmentTest < ActiveSupport::TestCase
  # Model Validations
  # -----------------
  test "A document fragment always belongs to a document" do
    result = FactoryBot.create(:document_fragment)
    assert result.valid?

    result.document_id = nil
    assert_not result.valid?
  end

  test "A document fragment requires a position" do
    result = FactoryBot.build(:document_fragment)
    assert result.valid?

    result.position = nil
    assert_not result.valid?
    assert result.errors.key?(:position)
  end

  test "A document fragment only accepts positions greater than 0" do
    result = FactoryBot.build(:document_fragment)
    assert result.valid?

    result.position = -1
    assert_not result.valid?
    assert result.errors.key?(:position)

    result.position = 0
    assert_not result.valid?
    assert result.errors.key?(:position)

    result.position = 1.1
    assert_not result.valid?
    assert result.errors.key?(:position)
  end

  test "A document fragment only accepts valid types" do
    assert_raises { DocumentFragment.new(type: "InvalidDocumentFragment") }

    DocumentFragment.descendants.map(&:name).each do |d|
      assert_nothing_raised { DocumentFragment.new(type: d) }
    end
  end
end
