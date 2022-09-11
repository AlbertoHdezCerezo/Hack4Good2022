module Editor
  module Documents
    class NewComponentPreview < ApplicationComponentPreview
      def default
        document = Document.new
        render Editor::Documents::NewComponent.new(document:)
      end
    end
  end
end
