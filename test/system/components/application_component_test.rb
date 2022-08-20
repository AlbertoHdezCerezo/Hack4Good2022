require "test_helper"

class ExampleComponentTest < ViewComponent::TestCase
  def setup
    @component = ApplicationComponent
  end

  def test_render_component
    render_inline(@component.new)
    assert_selector(".#{@component.component_class}")
  end
end
