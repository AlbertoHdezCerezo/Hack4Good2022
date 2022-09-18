# frozen_string_literal: true

# Renders Tailwind Config Viewer HTML
module Editor
  module Common
    class DocumentFragmentComponent < ApplicationComponent
      attr_reader :document_fragment

      def initialize(document_fragment:, html_attributes: {})
        @document_fragment = document_fragment
        super(html_attributes:)
      end

      def call
        tag.div(**@wrapper_attributes) do
          document_fragment.to_html
        end
      end

      private

      def default_html_attributes
        super.merge(
          {
            data: {
              controller: "editor-common-document-fragment-component",
            },
          }
        )
      end

      # Default component HTML class attibute
      def default_css_classes
        "contents"
      end
    end
  end
end
