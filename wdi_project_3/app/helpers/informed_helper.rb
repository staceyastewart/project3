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
    elsif reddit == 'globalhealth'
      'health'
    elsif reddit == 'poverty'
      'poverty'
    elsif reddit == 'BetterRelationships'
      'sex + relationships'
    end
  end
end
