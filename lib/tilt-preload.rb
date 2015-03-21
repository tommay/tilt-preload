require "tilt"

module TiltPreload
  PRELOADS = {
    :ERB => 'tilt/erb',
    :Erubis => 'tilt/erubis',
    :BlueCloth => 'tilt/bluecloth',
    :Maruku => 'tilt/maruku',
    :Kramdown => 'tilt/kramdown',
    :RDiscount => 'tilt/rdiscount',
    :Redcarpet => 'tilt/redcarpet',
    :Asciidoctor => 'tilt/asciidoc',
    :Builder => 'tilt/builder',
    :CSV => 'tilt/csv',
    :FasterCSV => 'tilt/csv',
    :CoffeeScript => 'tilt/coffee',
    :Creole => 'tilt/creole',
    :Haml => 'tilt/haml',
    :Less => 'tilt/less',
    :Liquid => 'tilt/liquid',
    :Markaby => 'tilt/markaby',
    :Nokogiri => 'tilt/nokogiri',
    :RDoc => 'tilt/rdoc',
    :Radius => 'tilt/radius',
    :RedCloth => 'tilt/redcloth',
    :Sass => 'tilt/sass',
    :Sass => 'tilt/sass',
    :WikiCloth => 'tilt/wikicloth',
    :Yajl => 'tilt/yajl',
  }

  # Looks to see what template engine classes are defined and require the
  # corresponding tilt helper file.

  def self.preload
    PRELOADS.each do |k, v|
      if Object.const_defined?(k)
        require v
      end
    end
  end

  preload
end
