class UrlsController < ApplicationController
  before_action :returnHost
  def index
    short_urls = Shortener::ShortenedUrl.pluck(:url,:unique_key)
    urls = []
    short_urls.each_with_index do |value, index|
      urls[index] = [value[0], "#{@url}/#{value[1]}"]
    end
    # binding.pry
    render json: {status: 200, urls: urls}
  end

  def create
    short_url = Shortener::ShortenedUrl.generate(url_params['original_url'])
    render json: {status: 200, short_url: "#{@url}/#{short_url.unique_key}"}
  end

  def to_original_url
    short_url = Shortener::ShortenedUrl.find_by(unique_key: params[:id])
    render json: {status: 200, original_url: short_url.url}
  end

  def returnHost
    @host = request.host
    @port = request.port
    protocol = request.protocol
    @url = "#{protocol}#{@host}:#{@port}"
  end

  private
  def url_params
    params.require(:url).permit(:original_url,:short_url)
  end
end
