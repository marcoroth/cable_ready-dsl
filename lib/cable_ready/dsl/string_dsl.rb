# frozen_string_literal: true

module CableReady
  module Dsl
    module StringDsl
      refine String do
        def append(...)
          SelectorString.new(self).append(...)
        end

        def inner_html(...)
          SelectorString.new(self).inner_html(...)
        end

        def insert_adjacent_html(...)
          SelectorString.new(self).insert_adjacent_html(...)
        end

        def morph(...)
          SelectorString.new(self).morph(...)
        end

        def outer_html(...)
          SelectorString.new(self).outer_html(...)
        end

        def prepend(...)
          SelectorString.new(self).prepend(...)
        end

        def replace(...)
          SelectorString.new(self).replace(...)
        end
      end
    end
  end
end
