require "test_helper"

class DocumentTest < ActiveSupport::TestCase
  # Model Validations
  # -----------------
  test "A document requires a name" do
    result = FactoryBot.build(:document)
    assert result.valid?

    result.name = nil
    assert_not result.valid?
    assert result.errors.key?(:name)
  end

  test "A document requires a status" do
    result = FactoryBot.build(:document)
    assert result.valid?

    result.status = nil
    assert_not result.valid?
    assert result.errors.key?(:status)
  end

  test "Document has 'idea' as default status" do
    result = Document.new
    assert result.idea?
  end
end
