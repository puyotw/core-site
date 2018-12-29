module Jekyll
  class TagsPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tags'] = tag

      tag_title_prefix = 'Tags: '
      self.data['title'] = "#{tag_title_prefix}#{tag}"
    end
  end

  class TagsPageGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'tag_index'
        dir = 'tags'
        tagsArr = Array.new
        site.collections['wiki'].docs.each {|n| 
        n['tags'].each{|m|
            tagsArr.push(m)
          }
        }
        tagsArr = tagsArr.uniq
        puts "---Generate Tags---"
        puts tagsArr
        puts "-------------------"
        tagsArr.each{|n| 
          site.pages << TagsPage.new(site, site.source, File.join(dir, n), n)
        }
      end
    end
  end
end