require 'json'

# Converts a block with the following format:
#
# {% puyosim mode:0 attr1:value1 attr2:value2 %}
#    Y   Y G   G   
# || Y Y G R G B ||
# || R R R B B B ||
# ++=============++
# {% endpuyosim %}
# 
# to
#
# <pre class="puyo=simulator" data-mode="0" data-attr1="value1" data-attr2="value2">
#    Y   Y G   G   
# || Y Y G R G B ||
# || R R R B B B ||
# ++=============++</pre>
#
# This preformatted block adheres to the format required by simulator embed script,
# which transforms this block to an iframe at runtime.
#
# `mode` is a required parameter. Other parameters depends on the mode, so are optional.
class PuyoSimBlock < Liquid::Block
  SimulatorClassName = 'puyo-simulator'

  def initialize(tagName, markup, tokens)
    super
    @parameters = {}

    markup.scan(Liquid::TagAttributes) do |key, value|
      @parameters[key] = value
    end
  end

  def render(context)
    if @parameters['mode'].nil? then
      raise 'No "mode" parameter specified for a simulator block.'
    end

    attributes = @parameters.map do |key, value| 
      # JSON.generate quotes the string and properly escapes quotes and backslashes.
      # quirks_mode == true allows strings to be JSONified;
      # otherwise only Hashes and Arrays are JSONifiable.
      "data-#{key}=" + JSON.generate(value, { :quirks_mode => true })
    end.join ' '

    # chomp removes trailing lines, which are unwanted in our ASCII parsing algorithm
    %Q|<pre class="#{SimulatorClassName}" #{attributes}>#{super.chomp}</pre>|
  end

  Liquid::Template.register_tag 'puyosim', self
end
