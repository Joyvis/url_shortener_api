# frozen_string_literal: true

class ShortenedUrlSerializer < ActiveModelSerializers::Model
  attributes :id, :url, :shortened_url, :string_hash

  def shortened_url
    "#{request.host}/#{object.string_hash}"
  end
end
