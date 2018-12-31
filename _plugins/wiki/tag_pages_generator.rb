require 'set'

module Wiki
  # layout file in the _layout directory that specifies layout for a tag page
  TagLayout = "tag_index"
  # output directory of this page,
  # depending on context, use File.join(*...), or join("/")
  TagPagesDir = ["wiki", "tags"]

  # Represents a page for a tag that lists the documents under that tag.
  class TagPage < Jekyll::Page
    # text prepended to the title of this page, before the tag name
    TagNamePrefix = "標籤："

    def initialize(site, tag_name)
      @site, @base = site, site.source
      @dir = File.join(*TagPagesDir, tag_name)
      @name = "index.html"

      process(@name)
      # populate the content of this TagPage with whatever is specified in the layout
      read_yaml(@base, site.layouts[TagLayout].relative_path)
      self.data["title"] = "#{TagNamePrefix}#{tag_name}"
      self.data["tag"] = "#{tag_name}"
    end
  end

  # Generator that causes each tag used in the wiki collection to have a
  # tag page that lists out all documents under that tag.
  class TagPagesGenerator < Jekyll::Generator
    safe true

    def generate(site)
      if site.layouts.key? TagLayout
        # collect a set of all tags used on all wiki documents
        tags = site.collections["wiki"].docs.reduce Set.new do |tag_set, doc|
          # for each wiki document, add all tags to the tag_set
          tag_set.merge(doc.data["tags"])

          # transforms each tag to a hash of:
          #
          #   { "name" => tag name, "url" => url to the tag page }
          #
          # to reduce the logic in the template to find the tag page
          doc.data["tags"].map! do |tag|
            { "name" => tag, "url" => [site.baseurl, *TagPagesDir, tag].join("/") }
          end
          
          # returns the tag_set
          tag_set
        end

        puts "---Generate Tag Pages---"
        puts tags.to_a
        puts "------------------------"

        # each tag needs a TagPage
        tags.each { |tag| site.pages << TagPage.new(site, tag) }
      end
    end
  end
end
