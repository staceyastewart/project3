class InformedController < ApplicationController

  def index
  end

  def load_links
    client = RedditKit::Client.new('project_active', 'Th1sisn3w86FKA')
    if params[:id] == 'animals'
      reddit = 'ARLAW'
    elsif params[:id] == 'bullying'
      reddit = 'bullying'
    elsif params[:id] == 'disasters'
      reddit = 'Disasters'
    elsif params[:id] == 'discrimination'
      reddit = 'human_rights'
    elsif params[:id] == 'education'
      reddit = 'education'
    elsif params[:id] == 'environment'
      reddit = 'enviroaction'
    elsif params[:id] == 'health'
      reddit = 'globalhealth'
    elsif params[:id] == 'poverty'
      reddit = 'poverty'
    elsif params[:id] == 'relationships'
      reddit = 'BetterRelationships'
    else
      reddit = 'activism'
    end
    @links = client.links(reddit).select {|l| l.is_self != true}
  end

  def show
    load_links
  end


end
