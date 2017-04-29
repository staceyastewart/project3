class InformedController < ApplicationController
  def index
    client = RedditKit::Client.new('project_active', 'Th1sisn3w86FKA')
    subreddits = client.subscribed_subreddits
    @links = client.links('politics')
  end



end
