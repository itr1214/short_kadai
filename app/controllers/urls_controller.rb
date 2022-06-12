class UrlsController < ApplicationController

  def index
    urls = Shortener::ShortenedUrl.pluck(:url)
    render json: {status: 200, original_urls: urls}
  end

  def create
    short_url = Shortener::ShortenedUrl.generate(url_params['original_url'])
    render json: {status: 200, short_url: short_url.unique_key}
  end

  def to_original_url
    short_url = Shortener::ShortenedUrl.find_by(unique_key: params[:id])
    render json: {status: 200, original_url: short_url.url}
  end

  private
  def url_params
    params.require(:url).permit(:original_url,:short_url)
  end
end
