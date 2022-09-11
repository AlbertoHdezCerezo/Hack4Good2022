# frozen_string_literal: true

# Renders Tailwind Config Viewer HTML
module Editor
  module Layout
    class PageBodyComponent < ApplicationComponent
      def call
        tag.div(content, **wrapper_attributes)
      end

      private

      def default_css_classes
        "w-full h-full"
      end
    end
  end
end
