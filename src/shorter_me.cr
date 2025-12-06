require "json"
require "http/client"

class ShorterMe
  def initialize()
    @headers = HTTP::Headers {
      "Content-Type" => "application/x-www-form-urlencoded; charset=UTF-8",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://shorter.me")
    @http_client = HTTP::Client.new(uri)
  end

  def shorten_url(url : String) : JSON::Any
    body = "url=#{url}&alias=&password="
    JSON.parse(
      @http_client.post("/page/shorten", body: body, headers: @headers).body)
  end

  def unshort_url(url : String) : JSON::Any
    body = "url=#{url}"
    JSON.parse(
      @http_client.post("/page/url-unshortener", body: body, headers: @headers).body)
  end
end
