require 'json'

module Wiki
  class SearchData < Jekyll::StaticFile
    Filename = "search.json"
    OutputDirectory = ""  # output directory of search.json relative to collection directory

    def initialize(site)
      super(site, site.source, OutputDirectory, Filename, site.collections["wiki"])
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

      output_file_path = destination(site_output_dir)
      FileUtils.mkdir_p(File.dirname(output_file_path)) # creates necessary directories for the output file
      File.write(output_file_path, search_data.to_json) # converts search_data to json, and write to output file

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
