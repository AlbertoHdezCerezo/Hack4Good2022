# @label Sample Component
class SampleComponentPreview < ViewComponent::Preview
  # Application Component
  # ---------------------
  # Abstract component to be inherited by the rest of components in project.
  def default
    render SampleComponent.new
  end
end
