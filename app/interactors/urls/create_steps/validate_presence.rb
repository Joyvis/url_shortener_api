# frozen_string_literal: true

module Urls
  module CreateSteps
    class ValidatePresence
      include Interactor

      def call
        context.fail!(error: 'URL is missing') if context.url.blank?
      end
    end
  end
end
