# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Urls::CreateSteps::ValidateUrl do
  describe 'validating url' do
    subject(:validate_url) do
      described_class.call(url: url)
    end

    context 'when url is valid' do
      let(:url) { 'http://www.test.com' }

      it 'returns successfully response' do
        expect(validate_url.success?).to be_truthy
      end
    end

    context 'when url is not valid' do
      let(:url) { 'http://www.com ' }

      it 'returns unsuccessfully response' do
        expect(validate_url.success?).to be_falsey
      end
    end

    context 'when url is nil' do
      let(:url) { nil }

      it 'returns unsuccessfully response' do
        expect(validate_url.success?).to be_falsey
      end
    end
  end
end
