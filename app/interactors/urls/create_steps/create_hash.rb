# frozen_string_literal: true

module Urls
  module CreateSteps
    class CreateHash
      include Interactor

      def call
        context.string_hash = compose_hash
      end

      private

      def compose_hash
        hash = []
        z_counter.times { hash << 'z' }
        hash << alphabet[last_char]

        hash.compact.join
      end

      def z_counter
        current_id / alphabet.size
      end

      def last_char
        current_id % alphabet.size
      end

      def current_id
        @current_id ||= context.current_id || 0
      end

      def alphabet
        @alphabet ||= ('a'..'z').to_a
      end
    end
  end
end
