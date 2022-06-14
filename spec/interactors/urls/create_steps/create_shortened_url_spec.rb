# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Urls::CreateSteps::CreateShortenedUrl do
  describe 'creating a shortened url' do
    subject(:create_shortened_url) do
      described_class.call(url: url, string_hash: string_hash)
    end

    context 'when all parameters are present' do
      let(:url) { 'http://www.test.com' }
      let(:string_hash) { 'a' }

      it 'returns successfully response' do
        expect(create_shortened_url.success?).to be_truthy
      end
    end

    context 'when url is missing' do
      let(:url) { nil }
      let(:string_hash) { 'a' }

      it 'returns a unsuccessfully response' do
        expect(create_shortened_url.success?).to be_falsey
      end
    end

    context 'when hash is missing' do
      let(:url) { 'http://www.test.com' }
      let(:string_hash) { nil }

      it 'returns a unsuccessfully response' do
        expect(create_shortened_url.success?).to be_falsey
      end
    end

    context 'when all parameters are invalid' do
      let(:url) { 'http://www.test.com' }
      let(:string_hash) { nil }

      it 'returns a unsuccessfully response' do
        expect(create_shortened_url.success?).to be_falsey
      end
    end
  end
end
