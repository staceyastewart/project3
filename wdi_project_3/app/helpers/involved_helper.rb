module InvolvedHelper

  def render_url(obj)
    title = obj["title"]
    title2 = title.gsub(" ", "-")
    url = "https://www.dosomething.org/us/campaigns/#{title2}"
    return url
  end

  def user_favorites(obj, arr)
    if arr
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

end
