# @label Application Component
class ApplicationComponentPreview < ViewComponent::Preview
  # Application Component
  # ---------------------
  # Abstract component to be inherited by the rest of components in project.
  def default
    render ApplicationComponent.new
  end
end
