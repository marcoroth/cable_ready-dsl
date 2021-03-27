# frozen_string_literal: true

require 'test_helper'

module CableReady
  class DslTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::CableReady::Dsl::VERSION
    end
  end
end
