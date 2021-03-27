# frozen_string_literal: true

module CableReady
  module Dsl
    class SelectorString
      def initialize(selector)
        @selector = selector
      end

      def append(html, options = {})
        channel(options).append(selector: @selector, html: html, **options)
      end

      def inner_html(html, options = {})
        channel(options).inner_html(selector: @selector, html: html, **options)
      end

      def insert_adjacent_html(html, options = {})
        channel(options).insert_adjacent_html(selector: @selector, html: html, **options)
      end

      def morph(html, options = {})
        channel(options).morph(selector: @selector, html: html, **options)
      end

      def outer_html(html, options = {})
        channel(options).outer_html(selector: @selector, html: html, **options)
      end

      def prepend(html, options = {})
        channel(options).prepend(selector: @selector, html: html, **options)
      end

      def replace(html, options = {})
        channel(options).replace(selector: @selector, html: html, **options)
      end

      private

      def stream_name(options = {})
        options.delete(:channel) || 'cable_ready:channel'
      end

      def channel(options = {})
        CableReady::Channels.instance[stream_name(options)]
      end
    end
  end
end
