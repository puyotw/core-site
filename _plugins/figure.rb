module Figure

  # we need to maintain some numbering information for each page before render
  # to be able to refer to a later-defined figure in the document
  class << self
    attr_accessor :numbering, :curr_number
  end

  # resets the numbering information for each page
  Jekyll::Hooks.register :documents, :post_init do |doc|
    # for every new page, we reset the numbering information
    self.numbering = {}
    self.curr_number = 0
  end

  # Usage:
  #
  # {% figure label:<label_name> reffmt:"<format_string>" %}
  #
  #   some markdown, 
  #   the image would be put here
  #
  # {% caption "<format string>" %}
  #
  #   some caption markdown;
  #   if the whole block is omitted, no caption nor numbering is generated for this figure.
  #
  # {% endfigure %}
  #
  # This shall be converted to a <figure> HTML tag with content in between, and captions between the <figcaption> tag
  #
  # --------------------------------------------------
  # figure attributes:
  #
  # :attr label
  #    :value any string
  #    :optional
  #
  #    If specified, the figure is given a label, which may be referenced later using
  #    {% ref <label_name> %} or {% reft <label_name> %}.
  #
  #    If the caption is omitted, then the default ref_format is used, but the number
  #    of the figure becomes empty when trying to refer to it.
  #
  # :attr reffmt
  #    :value Liquid template and Markdown
  #    :optional
  #
  #    If specified, it becomes the caption reference string. A reference string
  #    is usually in front of the caption with numbering, e.g. "Figure 1." The
  #    `num` parameter is available for placing the figure number, e.g.
  #    "Figure {{ num }}." This string will also be used when {% ref %} is used to
  #    refer to that figure.
  #
  #    If omitted, the default format is used.
  #
  # caption attributes:
  # :attr format
  #    :value Liquid template and Markdown
  #    :optional
  #
  #    If specified, it becomes the overall format of the caption. The `ref` and
  #    `caption` parameters are available. For example, "{{ ref }}. {{ caption }}"
  #    is a format that generates a caption of something like "Figure 1. My dog."
  #
  #    If omitted, the default format is used.
  class FigureBlock < Liquid::Block
    DefaultCaptionFormat = '*{{ ref }}*：{{ caption }}'
    DefaultCaptionReferenceFormat = '圖 {{ num }}'
  
    def initialize(tag, markup, context)
      super
      @caption = nil
      @ref_fmt = DefaultCaptionReferenceFormat
      @cap_fmt = DefaultCaptionFormat
      @current_block = @body = Liquid::BlockBody.new
  
      markup.scan(Liquid::TagAttributes) do |key, value|
        case key
        when 'label'
          @label = unquote value
        when 'reffmt'
          @ref_fmt = unquote value
        end
      end
  
      # generate the ref string first
      @ref = Liquid::Template.parse(@ref_fmt).render({ 'num' => Figure.curr_number += 1 })
      Figure.numbering[@label] = @ref
    end
  
    def parse(tokens)
      while !@current_block.nil? && parse_body(@current_block, tokens)
      end
    end
  
    # parses the caption tag, which signifies the upcoming content to be in the caption block
    def unknown_tag(tag, markup, tokens)
      # if the caption tag is found, caption becomes the current context
      if tag == 'caption'.freeze then
        if @caption.nil? then
          # this is the first caption in this block,
          # we now write all content to the caption block
          @current_block = @caption = Liquid::BlockBody.new
  
          # change caption format if defined in the markup
          markup = unquote(markup.strip)
          @cap_fmt = if not markup.empty? then markup else @cap_fmt end
  
          return
        else
          # this is not the first caption in this block,
          # do no more parsing because it is invalid
          @current_block = nil
        end
      end
  
      # other unknown tags, let the super class handle it
      super
    end
  
    def render(context)
      caption   = Liquid::Template.parse(@cap_fmt);
  
      # we need this converted to convert markdown to html
      # or else the final html would just be the original input markdown text
      converter = context.registers[:site].find_converter_instance(Jekyll::Converters::Markdown) 
  
      # generate the pieces of figure in markdown
      body = @body.render(context)
      cap  = caption.render({
        'ref'     => @ref,
        'caption' => @caption.render(context).strip
      })                                    
  
      "<figure id=\"#{@label}\">"                    +
        remove_paragraph(converter.convert(body))    +
        if not @caption.nil? then
          '<figcaption>'                             +
            remove_paragraph(converter.convert(cap)) +
          '</figcaption>'
        else
          ''
        end                                          +
      '</figure>'
    end
  
    Liquid::Template.register_tag('figure', self)
  
    private
  
    # kramdown always wraps content with a paragraph tag, but we don't want the caption and images to be
    # wrapped with the tag, so this convenience function removes the outermost paragraph tag
    Paragraph = /<\/?p[^>]*>/
    def remove_paragraph(html)
      html.gsub(/^#{Paragraph}|#{Paragraph}$/, '')
    end

    # unquotes strings because tag attributes need to be between quotes
    QuotedString = /^('[^']*'|"[^"]*")$/
    def unquote(str)
      if str.match QuotedString then
        return str[1..-2]
      else
        return str
      end
    end

  end
  
  # For referring to the figure.
  #
  # Usage:
  #
  # {% ref <figure_label> %} which generates a reference link to the figure,
  #
  # or
  #
  # {% reft <figure_label> %} which generates the same, but without making it link.
  class Reference < Liquid::Tag
    
    def initialize(tag, markup, tokens)
      @no_link = tag.end_with? 't'
      @label = markup.strip
    end
  
    def render(context)
      if @no_link then
        Figure.numbering[@label]
      else
        "<a href=\"##{@label}\">#{Figure.numbering[@label]}</a>"
      end
    end
  
    Liquid::Template.register_tag('ref', self)
    Liquid::Template.register_tag('reft', self)
  
  end
end
