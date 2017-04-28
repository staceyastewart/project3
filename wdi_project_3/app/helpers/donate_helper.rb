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

end
