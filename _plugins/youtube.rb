class YouTube < Liquid::Tag
  Syntax = /^\s*([^\s]+)/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1
    else
      raise "No YouTube ID provided in the \"youtube\" tag"
    end
  end

  def render(context)
    "<div class=\"video-container mb3\"><iframe width=\"560\" height=\"400\" frameborder=\"0\" allowfullscreen src=\"http://www.youtube.com/embed/#{@id}?color=white&theme=light&rel=0&amp;showinfo=0\"></iframe></div>"
  end

  Liquid::Template.register_tag "youtube", self
end
