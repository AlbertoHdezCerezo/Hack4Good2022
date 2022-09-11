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
        document_fragment.to_html
      end
    end
  end
end
