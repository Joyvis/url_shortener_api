# frozen_string_literal: true

module Urls
  module CreateSteps
    class CreateShortenedUrl
      include Interactor

      delegate :url, :string_hash, to: :context

      def call
        shortened_url = ShortenedUrl.new(url: url, string_hash: string_hash)
        context.fail!(error: 'Shortened URL was not created') unless shortened_url.save

        context.shortened_url = shortened_url
      end
    end
  end
end
