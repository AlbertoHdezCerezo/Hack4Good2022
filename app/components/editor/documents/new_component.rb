# frozen_string_literal: true

# Renders Tailwind Config Viewer HTML
module Editor
  module Documents
    class NewComponent < ApplicationComponent
      attr_reader :document

      def initialize(document:, html_attributes: {})
        @document = document
        super(html_attributes:)
      end

      def call
        render Editor::Layout::PageBodyComponent.new do
          tag.div(**wrapper_attributes) do
            content
          end
        end
      end
    end
  end
end
