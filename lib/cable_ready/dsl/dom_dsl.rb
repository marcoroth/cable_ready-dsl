# frozen_string_literal: true

module CableReady
  module Dsl
    module DomDsl
      refine String do
        def dom
          ::CableReady::Dsl::SelectorString.new(self)
        end
      end
    end
  end
end
