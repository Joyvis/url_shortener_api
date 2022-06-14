# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Urls::CreateSteps::CreateHash do
  describe 'creating an identification hash for shortened urls' do
    subject(:create_hash) do
      described_class.call(current_id: current_id)
    end

    context 'when current_id is nil' do
      let(:current_id) { nil }

      it 'returns the first single char hash' do
        expect(create_hash.string_hash).to eq 'a'
      end
    end

    context 'when current_id is less or equals the alphabet size' do
      let(:current_id) { 3 }

      it 'returns a single char hash' do
        expect(create_hash.string_hash).to eq 'd'
      end
    end

    context 'when current_id is bigger than the alphabet size' do
      let(:current_id) { 26 }

      it 'returns a non-single char hash' do
        expect(create_hash.string_hash).to eq 'za'
      end
    end
  end
end
