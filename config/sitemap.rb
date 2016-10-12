# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://www.nationale-7.fr"

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #

#Static content pages
add '/comment-ca-marche', :changefreq => 'monthly', :priority => 0.7
add '/les-prix-nationale-7', :changefreq => 'monthly', :priority => 0.7 
add '/expertise-nationale-7', :changefreq => 'monthly', :priority => 0.7
add '/foire-aux-questions', :changefreq => 'monthly', :priority => 0.7 
add '/a-propos-de-nationale-7', :changefreq => 'monthly', :priority => 0.7 
add '/acheter-voiture-occasion', :changefreq => 'monthly', :priority => 0.8 
add '/vendre-voiture-occasion', :changefreq => 'monthly', :priority => 0.8 
add '/conditions-generales-de-vente', :changefreq => 'monthly', :priority => 0.2 
add '/mentions-legales', :changefreq => 'monthly', :priority => 0.2 

SitemapGenerator::Sitemap.adapter = SitemapGenerator::S3Adapter.new(
  fog_provider: 'AWS',
  aws_access_key_id: 'AKIAI3YND4WPLSICL56Q',
  aws_secret_access_key: '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',
  fog_directory: 'nationale7v2',
  fog_region: 'eu-west-1'
)

SitemapGenerator::Sitemap.sitemaps_host = "https://s3-eu-west-1.amazonaws.com/nationale7v2/"

SitemapGenerator::Sitemap.sitemaps_path = 'sitemaps/'

SitemapGenerator::Sitemap.public_path = 'tmp/'

SitemapGenerator::Sitemap.create do
    Car.where(statut: 'Actif').find_each do |car|
      add car_path(car.slug), :lastmod => car.updated_at, :changefreq => 'weekly', :priority => 0.9
    end
end
