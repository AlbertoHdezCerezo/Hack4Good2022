module Editor
  module Documents
    class EditComponentPreview < ApplicationComponentPreview
      def default
        document = Document.first
        render Editor::Documents::EditComponent.new(document:)
      end
    end
  end
end
