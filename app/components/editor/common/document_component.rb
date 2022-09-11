# frozen_string_literal: true

# Renders Tailwind Config Viewer HTML
module Editor
  module Common
    class DocumentComponent < ApplicationComponent
      attr_reader :document

      def initialize(document:, html_attributes: {})
        @document = document
        super(html_attributes:)
      end

      def call
        render DocumentFragmentComponent.with_collection(document.document_fragments)
      end
    end
  end
end
