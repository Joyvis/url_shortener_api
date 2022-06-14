# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ShortenedUrls', type: :request do
  describe 'POST #create' do
    before { post '/', params: { shortened_url: params } }

    context 'when params are valid' do
      let(:params) do
        { url: 'http://www.test.com' }
      end

      it 'responds with a :created http status' do
        expect(response).to have_http_status(:created)
      end
    end

    context 'when params are not valid' do
      let(:params) do
        { url: '' }
      end

      it 'responds with a :unprocessable_entity http status' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'GET #show' do
    before do
      get "/#{string_hash}"
    end

    context 'with a valid string hash' do
      let(:shortened_url) { create(:shortened_url) }
      let(:string_hash) { shortened_url.id }

      it 'redirects to the final url' do
      end
    end

    context 'with a invalid string hash' do
      let(:string_hash) { 'aaaa' }

      it 'returns a not_found error' do
        expect(response).to have_http_status(:not_found)
      end
    end
  end
end
