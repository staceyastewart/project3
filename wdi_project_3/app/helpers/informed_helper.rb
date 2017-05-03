module InformedHelper

  def category_from_reddit(reddit)

    if reddit == 'ARLAW'
      'animals'
    elsif reddit == 'bullying'
      'bullying'
    elsif reddit == 'Disasters'
      'disasters'
    elsif reddit == 'human_rights'
      'discrimination'
    elsif reddit == 'education'
      'education'
    elsif reddit == 'enviroaction'
      'environment'
    elsif reddit == 'homelessness'
      'poverty'
    elsif reddit == 'globalhealth'
      'mental health'
    elsif reddit == 'globalhealth'
      'physical health'
    elsif reddit == 'poverty'
      'poverty'
    elsif reddit == 'BetterRelationships'
      'relationships'
    elsif reddit == 'BetterRelationships'
      'sex'
    elsif reddit == 'uncensorednews'
      'violence'
    end

  end


  def informed_favorites(obj,arr)

    index_of_fav = 0
    arr.each do |fav|
      @fav_arr=[]

      if fav[:name] == obj["name"]
        @fav_arr = ["YES"]
        @index_of_fav = index_of_fav
        break
      else

        index_of_fav += 1

      end
    end
  end
end
