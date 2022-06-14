# frozen_string_literal: true

class ShortenedUrl < ApplicationRecord
  validates :url, :string_hash, presence: true
  validates :string_hash, uniqueness: { case_sensitive: false }
end
