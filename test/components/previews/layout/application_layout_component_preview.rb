module Layout
  # @label Application Component
  class ApplicationLayoutComponentPreview < ApplicationComponentPreview
    # Application Layout Component
    # ----------------------------
    # Wraps the ´/layout/application.html´ view in a component.
    #
    # Defines the default layout for all application views.
    def default
    end

    # Application Layout Component (Configurable)
    # -------------------------------------------
    # The component provides a ´header´ and ´body´ slots as
    # subcomponents.
    #
    # The ´Header´ component counts with a title ´String´ parameter
    # to specify the title of the page, and a ´meta_tags´ ´Hash´
    # parameter to specify ´<head>´ meta tags.
    #
    # The ´Body´ component allows to define custom classes and styles
    # for the ´<body>´ element.
    #
    # If slots are not defined the component will render the slots
    # with their respective default configuration (as seen in ´default´)
    # preview.
    #
    # @param title text
    def configurable(title: "Sample Title")
    end
  end
end
