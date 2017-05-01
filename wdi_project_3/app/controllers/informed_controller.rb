class InformedController < ApplicationController

  def index
    client = RedditKit::Client.new('project_active', 'Th1sisn3w86FKA')
    @links = client.links(all_categories).select {|l| l.is_self != true}
    # @debug = true
  end

  def load_links
    client = RedditKit::Client.new('project_active', 'Th1sisn3w86FKA')
    @links = client.links(category_from_id).select {|l| l.is_self != true}
  end

  def category_from_id
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
  end

  def all_categories
    client = RedditKit::Client.new('project_active', 'Th1sisn3w86FKA')
    reddit = [
     'ARLAW',
     'bullying',
     'Disasters',
     'human_rights',
     'education' ,
     'enviroaction',
     'globalhealth',
     'poverty',
     'BetterRelationships'
     ]
     reddit.join('+')
  end

  def show
    load_links
  end

  def create
    InformedFavorite.create(
      user_id: params[:user_id],
      animals: params[:animals],
      bullying: params[:bullying],
      disasters: params[:disasters],
      discrimination: params[:discrimination],
      education: params[:education],
      environment: params[:environment],
      homelessness: params[:homelessness],
      physical_health: params[:physical_health],
      poverty: params[:poverty],
      relationships: params[:relationships],
      sex: params[:sex],
      violence: params[:violence]
      )
  end


end
