module InvolvedHelper


  def primary_name(obj)
    primary = obj["causes"]["primary"]
    secondary = obj["causes"]["secondary"]
    if primary
      primary["name"]
    elsif secondary
      secondary[0]["name"]
    else
    end
  end

  def cause_events(obj)
    cause_name = primary_name(obj)
    id = params[:id].downcase
    if cause_name == id
      obj["title"]
    else
      #
    end
  end

  def render_url(obj)
    title = obj["title"]
    title2 = title.gsub(" ", "-")
    url = "https://www.dosomething.org/us/campaigns/#{title2}"
    return url
  end

  def user_favorites(obj, arr)
    index_of_fav = 0
      arr.each do |favorite|
        @fav_arr = []
        if favorite[:title] == obj["title"]
          @fav_arr = ["YES"]
          @index_of_fav = index_of_fav
          break
        else
          false
          index_of_fav += 1
        end
      end
  end

end
