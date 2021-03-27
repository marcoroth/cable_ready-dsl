# frozen_string_literal: true

module CableReady
  module Dsl
    module MethodDsl
      def dom(selector)
        ::CableReady::Dsl::SelectorString.new(selector)
      end

      def css(selector)
        dom(selector)
      end

      def id(selector)
        ::CableReady::Dsl::SelectorString.new("##{selector}")
      end

      def css_class(selector)
        ::CableReady::Dsl::SelectorString.new(".#{selector}")
      end
    end
  end
end
