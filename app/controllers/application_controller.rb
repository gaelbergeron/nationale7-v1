class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options={})
    site_name   = "Nationale 7"
    title       = "Voitures d'occasion l'esprit léger."
    description = "Voitures d'occasion entre particuliers, expertisées, garanties et pas chères. Quand acheter et vendre sa voiture devient aussi agréable qu'un départ en vacances."
    image       = options[:image] || "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/home-logo.jpg"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      twitter: {
        site_name: site_name,
        site: '@N7_officiel',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: "Nationale 7 | Voitures d'occasion l'esprit léger.",
        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end

end
