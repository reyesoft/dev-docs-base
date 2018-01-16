module Jekyll
    class PreviewImg < Liquid::Tag

      def initialize(tag_name, url_img, tokens)
        super
        # @url = '../img/styleguide/marketing/'
        @url_img = url_img.strip
      end

      def render(context)

        "<div style=\"max-width: 250px; max-height: 250px; width: 250px; height: 250px; background-color: #eeeeee; margin: 20px; display:inline-block\">
            <div class=\"layout-row layout-align-space-between-center\" style=\"padding: 8px; background-color: #e0e0e0\">
                <div>nombre</div>
                <i class=\"material-icons\">file_download</i>
            </div>
            <div style=\"padding: 16px; height: 210px\" class=\"layout-row layout-align-center-center\">
                <a href=\"{{ #{@url_img} | prepend: site.baseurl }}\" download=\"{{ #{@url_img} | prepend: site.baseurl }}\">
                    <img src=\"{{ #{@url_img} | prepend: site.baseurl }}\" />
                </a>
            </div>
        </div>"

      end
    end
  end

  Liquid::Template.register_tag('preview_img', Jekyll::PreviewImg)
