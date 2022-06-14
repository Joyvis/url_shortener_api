# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Urls::CreateSteps::ValidatePresence do
  describe 'validating url presence' do
    subject(:validate_presence) do
      described_class.call(url: url)
    end

    context 'when url is present' do
      let(:url) { 'http://www.test.com' }

      it 'returns successfully response' do
        expect(validate_presence.success?).to be_truthy
      end
    end

    context 'when url is not present' do
      let(:url) { nil }

      it 'returns unsuccessfully response' do
        expect(validate_presence.success?).to be_falsey
      end
    end
  end
end
