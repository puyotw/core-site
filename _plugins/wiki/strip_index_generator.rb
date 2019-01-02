module Wiki
  # Removes "/index" suffix from document url if present.
  class StripIndexGenerator < Jekyll::Generator
    priority :highest

    def generate(site)
      site.collections["wiki"].docs
          .each { |doc| doc.url.slice! /\/index$/; }
    end
  end
end
