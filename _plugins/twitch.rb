class Twitch < Liquid::Tag
  Syntax = /^\s*(vod|clip)\s+([^\s]+)\s*/

  def initialize(tagName, markup, tokens)
    super

    if markup =~ Syntax then
      @id = $2
      if $1 == "vod" then
          @url = "https://player.twitch.tv/?video=#{@id}&autoplay=false"
      elsif $1 == "clip" then
          @url = "https://clips.twitch.tv/embed?clip=#{@id}&autoplay=false"
      end

    else
      raise "No Twitch ID provided in the 'twitch' tag"
    end
  end

  def render(context)
    "<div class='video-container'><iframe width='560' height='400' frameborder='0' webkitallowfullscreen mozallowfullscreen allowfullscreen src='#{@url}'></iframe></div>"
  end

  Liquid::Template.register_tag "twitch", self
end
