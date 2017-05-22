module DonateHelper
  def charity_show(obj)
    # below gives you the id on the page
    ein_id = params[:ein]
    charity_id = obj["ein"]
    puts ein_id
    puts charity_id
    if ein_id == charity_id
      obj["charityName"]
    else
    end

  end

  def is_fav(obj, arr)
    index_of_fav = 0
    arr.each do |fav|
      @favorite_arr = []
      if fav.name == obj["charityName"]
        @favorite_arr = ["YES"]
        @index_of_fav = index_of_fav
        break
      else
        index_of_fav +=1
      end
    end
  end

end
