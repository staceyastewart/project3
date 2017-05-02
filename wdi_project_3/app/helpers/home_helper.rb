module HomeHelper
    def render_ur(obj)
    title = obj["name"]
    title2 = title.gsub(" ", "-")
    url = "https://www.dosomething.org/us/campaigns/#{title2}"
    return url
  end

end
