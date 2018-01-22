require 'json'
require 'uri'
require 'open-uri'

module Jekyll
  class Cat < Liquid::Tag

    def initialize(tag_name, path, tokens)
      super
      @path = path
    end

    def render(context)
      if @path =~ URI::regexp
        # the requested resource is a URL
        return render_url(context)
      elsif @path[0] == '/'
        # the requested resource is an file, specified with an absolute path
        return render_file_abs(context)
      else
        # the requested resource is an file, specified with a relative path
        return render_file_rel(context)
      end 
    end

    def render_file_abs(context)
      file_path = @path
      content = File.read(file_path.strip!)
      return content
    end

    def render_file_rel(context)
      site_source = context.registers[:site].config['source']
      file_path = site_source + '/' + @path
      content = File.read(file_path.strip!)
      return content
    end

    def render_url(context)
      encoded_url = URI.encode(@path)
      return open(encoded_url).read
    end
  end
end

Liquid::Template.register_tag('cat', Jekyll::Cat)