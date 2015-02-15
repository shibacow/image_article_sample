require 'uri'

module ArticlesHelper
  def auto_link_to(text)
    result=[]
    text.split("\n").each { |line|
      URI.extract(line,["http","https"]).each do |uri|
        line=link_to(uri,uri)
      end
      result.push(line)
    }
    result.join("\n")
  end
end
