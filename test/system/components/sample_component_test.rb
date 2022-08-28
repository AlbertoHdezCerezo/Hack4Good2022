require "test_helper"

class SampleComponentTest < ViewComponent::TestCase
  def setup
    @component = SampleComponent
  end

  def test_render_component
    render_inline(@component.new)
    assert_selector(".#{@component.component_class}")
  end
end
