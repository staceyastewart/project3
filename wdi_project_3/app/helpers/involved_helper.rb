module InvolvedHelper
  def primary_name(obj)
    primary = obj["causes"]["primary"]

    primary["name"] if primary
  end

  def image_display(obj)
    obj["image"] || "foo.jpg"
  end
end
