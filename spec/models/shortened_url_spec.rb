# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ShortenedUrl, type: :model do
  describe 'validations' do
    subject(:shortened_url) { create(:shortened_url) }

    it 'validates presence of url' do
      expect(shortened_url).to validate_presence_of(:url)
    end

    it 'validates presence of string_hash' do
      expect(shortened_url).to validate_presence_of(:string_hash)
    end

    it 'validates uniqueness of string_hash' do
      expect(shortened_url).to validate_uniqueness_of(:string_hash).case_insensitive
    end
  end
end
