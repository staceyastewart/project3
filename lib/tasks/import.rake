namespace :import do
  desc "Import all the Cause data from the API"
  task :causes => :environment do
    causes = HTTParty.get("https://www.dosomething.org/api/v1/campaigns?count=250")




    causes["data"].each do |cause|
      if cause["causes"]["primary"]
        cause_term = cause["causes"]["primary"]["name"]
      elsif cause["causes"]["secondary"]
        cause_term = cause["causes"]["secondary"][0]["name"]
      end
      next unless cause["cover_image"]["default"]
      next unless cause_term
      Cause.create(
        title: cause["title"],
        tagline: cause["tagline"],
        url: cause["url"],
        cover_image: cause["cover_image"]["default"]["uri"],
        term: cause_term
      )
    end
    puts "Importing Cause data complete."
  end
end
