# frozen_string_literal: true

FactoryBot.define do
  factory :shortened_url do
    url { 'http://www.factoryurl.com' }
    string_hash { 'a' }
  end
end
