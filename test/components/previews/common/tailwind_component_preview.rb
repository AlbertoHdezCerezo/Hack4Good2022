# @label Tailwind Component
class Common::TailwindComponentPreview < ViewComponent::Preview
  # Tailwind Component
  # ---------------------
  # Displays TailwindCSS template classes.
  def default
    render Common::TailwindComponent.new
  end
end
