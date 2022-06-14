# frozen_string_literal: true

class ShortenedUrlsController < ApplicationController
  def create
    if create_shortened_url.success?
      render json: create_shortened_url.shortened_url, status: :created
    else
      render json: { error: create_shortened_url.error }, status: :unprocessable_entity
    end
  end

  def show
    shortened_url = ShortenedUrl.find_by(string_hash: params[:string_hash])

    if shortened_url.present?
      redirect_to shortened_url.url
    else
      render json: { error: 'Not Found' }, status: :not_found
    end
  end

  private

  def create_shortened_url
    @create_shortened_url ||= Urls::Create.call(
      shortened_url_params.merge({ current_id: current_id })
    )
  end

  def current_id
    ShortenedUrl.last&.id
  end

  def shortened_url_params
    params.require(:shortened_url).permit(:url)
  end
end
