# frozen_string_literal: true

# Concern for STI direct subclasses. Preloads all STI class subclasses if the current
# environment is not set with eager load, like +development+.
module StiPreload
  unless Rails.application.config.eager_load
    extend ActiveSupport::Concern

    class_methods do
      def descendants
        load_sti_descendants unless preloaded
        super
      end

      def sti_descendants
        raise "STI class #{name} does not define sti_descendants.
               Define method return an array of string representing the STI subclasses names"
      end

      def load_sti_descendants
        sti_descendants.each(&:constantize)
        self.preloaded = true
      end
    end

    included do
      cattr_accessor :preloaded, instance_accessor: false
    end
  end
end
