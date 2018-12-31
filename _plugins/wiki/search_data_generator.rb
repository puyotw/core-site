require 'json'

module Wiki
  class SearchData < Jekyll::StaticFile
    Filename = "search.json"
    OutputDirectory = "wiki"  # output directory of search.json relative to site output

    def initialize(site)
      super(site, site.source, OutputDirectory, Filename)
    end

    # describes content to output to search.json
    def write(site_output_dir)
      # converts each wiki page to a Hash representation containing just
      # title, categories, tags and url from base of website
      search_data = @site.collections["wiki"].docs.map do |doc|
        { 
          :title      => doc.data["title"],
          :categories => doc.data["categories"],
          :tags       => doc.data["tags"],
          :url        => "#{@site.baseurl}#{doc.url}"
        }
      end

      # converts search_data to json, and writes it to /wiki/search.json
      File.write(destination(site_output_dir), search_data.to_json)

      # return value to indicate whether search.json has changed since last output,
      # but since our search.json is somewhat dynamicly generated, 
      # this should just always be true
      true
    end
  end

  class SearchDataGenerator < Jekyll::Generator
    # simply adds search.json as a static file
    def generate(site)
      site.static_files << SearchData.new(site)
    end
  end
end
