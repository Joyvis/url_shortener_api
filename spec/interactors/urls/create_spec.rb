# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Urls::Create do
  describe 'creating a shortened url' do
    subject(:create_url) do
      described_class.call(current_id: current_id, url: url)
    end

    context 'when params are valid' do
      let(:current_id) { 1 }
      let(:url) { 'http://www.test.com' }

      it 'returns a successfully response' do
        expect(create_url.success?).to be_truthy
      end

      it 'returns a identification hash' do
        expect(create_url.string_hash).to eq 'b'
      end
    end

    context 'when params are not valid' do
      let(:current_id) { 1 }
      let(:url) { 'wwwtestcom' }

      it 'returns a unsuccessfully response' do
        expect(create_url.success?).to be_falsey
      end

      it 'returns a identification hash' do
        expect(create_url.string_hash).to be_nil
      end
    end
  end
end
