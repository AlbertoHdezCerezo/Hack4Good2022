# frozen_string_literal: true

module DocumentFragments
  class P < DocumentFragment
    class << self
      def markdown_representation
        "%{content}"
      end
    end
  end
end
