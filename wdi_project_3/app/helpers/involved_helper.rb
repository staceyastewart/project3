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
    puts "XXXXX PRINTING BELOW  XXXXXXX"
    puts cause_name
    id = params[:id].downcase
    puts id
    if cause_name == id
      obj["title"]
    else
      #
    end
  end

end
