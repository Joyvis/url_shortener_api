# frozen_string_literal: true

module Urls
  module CreateSteps
    class ValidateUrl
      include Interactor

      delegate :url, to: :context

      def call
        fail_context unless URI.parse(url).is_a?(URI::HTTP)
      rescue URI::InvalidURIError
        fail_context
      end

      private

      def fail_context
        context.fail!(error: 'URL is invalid')
      end
    end
  end
end
