class Niconico < Liquid::Tag
  Syntax = /^\s*([^\s]+)/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $1
    else
      raise "No Niconico ID provided in the 'niconico' tag"
    end
  end

  def render(context)
      "<div class='video-container mb3'><iframe width='560' height='400' frameborder='0' allowfullscreen src='https://embed.nicovideo.jp/watch/#{@id}?;showinfo=0'></iframe></div>"
  end

  Liquid::Template.register_tag "niconico", self
end
