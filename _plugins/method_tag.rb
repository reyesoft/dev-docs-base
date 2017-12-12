module Jekyll
  class MethodTag < Liquid::Tag

    def initialize(tag_name, method, tokens)
      super
      @method = method.upcase
      @method_class = method.downcase
    end

    def render(context)
      "<span class=#{@method_class}>#{@method}</span>"
    end
  end
end

Liquid::Template.register_tag('method_tag', Jekyll::MethodTag)
