# frozen_string_literal: true

class CreateShortenedUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :shortened_urls do |t|
      t.string :url, null: false
      t.string :string_hash, null: false
      t.timestamps
    end
    add_index :shortened_urls, :string_hash, unique: true
  end
end
